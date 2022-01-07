; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_stripe_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_stripe_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.stripe_c* }
%struct.stripe_c = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.bio = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@REQ_OP_SECURE_ERASE = common dso_local global i64 0, align 8
@REQ_OP_WRITE_ZEROES = common dso_local global i64 0, align 8
@REQ_OP_WRITE_SAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @stripe_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.stripe_c*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 0
  %11 = load %struct.stripe_c*, %struct.stripe_c** %10, align 8
  store %struct.stripe_c* %11, %struct.stripe_c** %6, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @REQ_PREFLUSH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %2
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = call i32 @dm_bio_get_target_bio_nr(%struct.bio* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.stripe_c*, %struct.stripe_c** %6, align 8
  %23 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp uge i32 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.bio*, %struct.bio** %5, align 8
  %29 = load %struct.stripe_c*, %struct.stripe_c** %6, align 8
  %30 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bio_set_dev(%struct.bio* %28, i32 %38)
  %40 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %40, i32* %3, align 4
  br label %123

41:                                               ; preds = %2
  %42 = load %struct.bio*, %struct.bio** %5, align 8
  %43 = call i64 @bio_op(%struct.bio* %42)
  %44 = load i64, i64* @REQ_OP_DISCARD, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %73, label %49

49:                                               ; preds = %41
  %50 = load %struct.bio*, %struct.bio** %5, align 8
  %51 = call i64 @bio_op(%struct.bio* %50)
  %52 = load i64, i64* @REQ_OP_SECURE_ERASE, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %49
  %58 = load %struct.bio*, %struct.bio** %5, align 8
  %59 = call i64 @bio_op(%struct.bio* %58)
  %60 = load i64, i64* @REQ_OP_WRITE_ZEROES, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %57
  %66 = load %struct.bio*, %struct.bio** %5, align 8
  %67 = call i64 @bio_op(%struct.bio* %66)
  %68 = load i64, i64* @REQ_OP_WRITE_SAME, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %65, %57, %49, %41
  %74 = load %struct.bio*, %struct.bio** %5, align 8
  %75 = call i32 @dm_bio_get_target_bio_nr(%struct.bio* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.stripe_c*, %struct.stripe_c** %6, align 8
  %78 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp uge i32 %76, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @BUG_ON(i32 %81)
  %83 = load %struct.stripe_c*, %struct.stripe_c** %6, align 8
  %84 = load %struct.bio*, %struct.bio** %5, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @stripe_map_range(%struct.stripe_c* %83, %struct.bio* %84, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %123

87:                                               ; preds = %65
  %88 = load %struct.stripe_c*, %struct.stripe_c** %6, align 8
  %89 = load %struct.bio*, %struct.bio** %5, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bio*, %struct.bio** %5, align 8
  %94 = getelementptr inbounds %struct.bio, %struct.bio* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = call i32 @stripe_map_sector(%struct.stripe_c* %88, i32 %92, i64* %7, i32* %95)
  %97 = load %struct.stripe_c*, %struct.stripe_c** %6, align 8
  %98 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.bio*, %struct.bio** %5, align 8
  %105 = getelementptr inbounds %struct.bio, %struct.bio* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %103
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 4
  %111 = load %struct.bio*, %struct.bio** %5, align 8
  %112 = load %struct.stripe_c*, %struct.stripe_c** %6, align 8
  %113 = getelementptr inbounds %struct.stripe_c, %struct.stripe_c* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = load i64, i64* %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @bio_set_dev(%struct.bio* %111, i32 %120)
  %122 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %87, %73, %18
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @dm_bio_get_target_bio_nr(%struct.bio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @stripe_map_range(%struct.stripe_c*, %struct.bio*, i32) #1

declare dso_local i32 @stripe_map_sector(%struct.stripe_c*, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
