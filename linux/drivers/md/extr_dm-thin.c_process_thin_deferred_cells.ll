; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_thin_deferred_cells.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_process_thin_deferred_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { i32, i32, %struct.pool* }
%struct.pool = type { i32 (%struct.thin_c*, %struct.dm_bio_prison_cell*)*, i32 (%struct.thin_c*, %struct.dm_bio_prison_cell.0*)*, %struct.dm_bio_prison_cell.1** }
%struct.dm_bio_prison_cell = type opaque
%struct.dm_bio_prison_cell.0 = type opaque
%struct.dm_bio_prison_cell.1 = type { i32, i32 }
%struct.list_head = type { i32 }

@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*)* @process_thin_deferred_cells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_thin_deferred_cells(%struct.thin_c* %0) #0 {
  %2 = alloca %struct.thin_c*, align 8
  %3 = alloca %struct.pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.list_head, align 4
  %6 = alloca %struct.dm_bio_prison_cell.1*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.thin_c* %0, %struct.thin_c** %2, align 8
  %10 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %11 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %10, i32 0, i32 2
  %12 = load %struct.pool*, %struct.pool** %11, align 8
  store %struct.pool* %12, %struct.pool** %3, align 8
  %13 = call i32 @INIT_LIST_HEAD(%struct.list_head* %5)
  %14 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %15 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %19 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %18, i32 0, i32 1
  %20 = call i32 @list_splice_init(i32* %19, %struct.list_head* %5)
  %21 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %22 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = call i64 @list_empty(%struct.list_head* %5)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %119

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %115, %28
  %30 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %31 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %30, i32 0, i32 2
  %32 = load %struct.pool*, %struct.pool** %31, align 8
  %33 = call i32 @sort_cells(%struct.pool* %32, %struct.list_head* %5)
  store i32 %33, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %111, %29
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %114

38:                                               ; preds = %34
  %39 = load %struct.pool*, %struct.pool** %3, align 8
  %40 = getelementptr inbounds %struct.pool, %struct.pool* %39, i32 0, i32 2
  %41 = load %struct.dm_bio_prison_cell.1**, %struct.dm_bio_prison_cell.1*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dm_bio_prison_cell.1*, %struct.dm_bio_prison_cell.1** %41, i64 %43
  %45 = load %struct.dm_bio_prison_cell.1*, %struct.dm_bio_prison_cell.1** %44, align 8
  store %struct.dm_bio_prison_cell.1* %45, %struct.dm_bio_prison_cell.1** %6, align 8
  %46 = load %struct.dm_bio_prison_cell.1*, %struct.dm_bio_prison_cell.1** %6, align 8
  %47 = getelementptr inbounds %struct.dm_bio_prison_cell.1, %struct.dm_bio_prison_cell.1* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.pool*, %struct.pool** %3, align 8
  %54 = call i64 @ensure_next_mapping(%struct.pool* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %38
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %72, %56
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load %struct.pool*, %struct.pool** %3, align 8
  %64 = getelementptr inbounds %struct.pool, %struct.pool* %63, i32 0, i32 2
  %65 = load %struct.dm_bio_prison_cell.1**, %struct.dm_bio_prison_cell.1*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.dm_bio_prison_cell.1*, %struct.dm_bio_prison_cell.1** %65, i64 %67
  %69 = load %struct.dm_bio_prison_cell.1*, %struct.dm_bio_prison_cell.1** %68, align 8
  %70 = getelementptr inbounds %struct.dm_bio_prison_cell.1, %struct.dm_bio_prison_cell.1* %69, i32 0, i32 1
  %71 = call i32 @list_add(i32* %70, %struct.list_head* %5)
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %58

75:                                               ; preds = %58
  %76 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %77 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %76, i32 0, i32 0
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %81 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %80, i32 0, i32 1
  %82 = call i32 @list_splice(%struct.list_head* %5, i32* %81)
  %83 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %84 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %83, i32 0, i32 0
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  br label %119

87:                                               ; preds = %38
  %88 = load %struct.dm_bio_prison_cell.1*, %struct.dm_bio_prison_cell.1** %6, align 8
  %89 = getelementptr inbounds %struct.dm_bio_prison_cell.1, %struct.dm_bio_prison_cell.1* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @bio_op(i32 %90)
  %92 = load i64, i64* @REQ_OP_DISCARD, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.pool*, %struct.pool** %3, align 8
  %96 = getelementptr inbounds %struct.pool, %struct.pool* %95, i32 0, i32 1
  %97 = load i32 (%struct.thin_c*, %struct.dm_bio_prison_cell.0*)*, i32 (%struct.thin_c*, %struct.dm_bio_prison_cell.0*)** %96, align 8
  %98 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %99 = load %struct.dm_bio_prison_cell.1*, %struct.dm_bio_prison_cell.1** %6, align 8
  %100 = bitcast %struct.dm_bio_prison_cell.1* %99 to %struct.dm_bio_prison_cell.0*
  %101 = call i32 %97(%struct.thin_c* %98, %struct.dm_bio_prison_cell.0* %100)
  br label %110

102:                                              ; preds = %87
  %103 = load %struct.pool*, %struct.pool** %3, align 8
  %104 = getelementptr inbounds %struct.pool, %struct.pool* %103, i32 0, i32 0
  %105 = load i32 (%struct.thin_c*, %struct.dm_bio_prison_cell*)*, i32 (%struct.thin_c*, %struct.dm_bio_prison_cell*)** %104, align 8
  %106 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %107 = load %struct.dm_bio_prison_cell.1*, %struct.dm_bio_prison_cell.1** %6, align 8
  %108 = bitcast %struct.dm_bio_prison_cell.1* %107 to %struct.dm_bio_prison_cell*
  %109 = call i32 %105(%struct.thin_c* %106, %struct.dm_bio_prison_cell* %108)
  br label %110

110:                                              ; preds = %102, %94
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %34

114:                                              ; preds = %34
  br label %115

115:                                              ; preds = %114
  %116 = call i64 @list_empty(%struct.list_head* %5)
  %117 = icmp ne i64 %116, 0
  %118 = xor i1 %117, true
  br i1 %118, label %29, label %119

119:                                              ; preds = %27, %75, %115
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_init(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local i32 @sort_cells(%struct.pool*, %struct.list_head*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ensure_next_mapping(%struct.pool*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @list_splice(%struct.list_head*, i32*) #1

declare dso_local i64 @bio_op(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
