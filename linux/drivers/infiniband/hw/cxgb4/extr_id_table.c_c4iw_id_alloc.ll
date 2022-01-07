; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_id_table.c_c4iw_id_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_id_table.c_c4iw_id_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_id_table = type { i32, i32, i32, i32, i64, i32 }

@C4IW_ID_TABLE_F_RANDOM = common dso_local global i32 0, align 4
@RANDOM_SKIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_id_alloc(%struct.c4iw_id_table* %0) #0 {
  %2 = alloca %struct.c4iw_id_table*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.c4iw_id_table* %0, %struct.c4iw_id_table** %2, align 8
  %5 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %6 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %5, i32 0, i32 3
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %10 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %13 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %16 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @find_next_zero_bit(i32 %11, i32 %14, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %21 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %26 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %29 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @find_first_zero_bit(i32 %27, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %1
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %35 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %82

38:                                               ; preds = %32
  %39 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %40 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @C4IW_ID_TABLE_F_RANDOM, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = call i32 (...) @prandom_u32()
  %47 = load i32, i32* @RANDOM_SKIP, align 4
  %48 = srem i32 %46, %47
  %49 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %50 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %58

53:                                               ; preds = %38
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  %56 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %57 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %53, %45
  %59 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %60 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %63 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sge i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %68 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %67, i32 0, i32 1
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %72 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @set_bit(i32 %70, i32 %73)
  %75 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %76 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %4, align 4
  br label %83

82:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %69
  %84 = load %struct.c4iw_id_table*, %struct.c4iw_id_table** %2, align 8
  %85 = getelementptr inbounds %struct.c4iw_id_table, %struct.c4iw_id_table* %84, i32 0, i32 3
  %86 = load i64, i64* %3, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
