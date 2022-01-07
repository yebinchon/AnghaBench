; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_io_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_pool_io_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { %struct.TYPE_2__, %struct.pool* }
%struct.TYPE_2__ = type { i32 }
%struct.pool = type { i32 }
%struct.queue_limits = type { i32, i32, i64 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.queue_limits*)* @pool_io_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pool_io_hints(%struct.dm_target* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.pool_c*, align 8
  %6 = alloca %struct.pool*, align 8
  %7 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %8 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %9 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %8, i32 0, i32 0
  %10 = load %struct.pool_c*, %struct.pool_c** %9, align 8
  store %struct.pool_c* %10, %struct.pool_c** %5, align 8
  %11 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %12 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %11, i32 0, i32 1
  %13 = load %struct.pool*, %struct.pool** %12, align 8
  store %struct.pool* %13, %struct.pool** %6, align 8
  %14 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %15 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SECTOR_SHIFT, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %20 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pool*, %struct.pool** %6, align 8
  %23 = getelementptr inbounds %struct.pool, %struct.pool* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %52, %26
  %28 = load %struct.pool*, %struct.pool** %6, align 8
  %29 = getelementptr inbounds %struct.pool, %struct.pool* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %32 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @is_factor(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %59

37:                                               ; preds = %27
  %38 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %39 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %42 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = and i32 %40, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %49 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %37
  %53 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %54 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rounddown_pow_of_two(i32 %55)
  %57 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %58 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %27

59:                                               ; preds = %27
  br label %60

60:                                               ; preds = %59, %2
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.pool*, %struct.pool** %6, align 8
  %63 = getelementptr inbounds %struct.pool, %struct.pool* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.pool*, %struct.pool** %6, align 8
  %69 = getelementptr inbounds %struct.pool, %struct.pool* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @is_factor(i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %106, label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.pool*, %struct.pool** %6, align 8
  %75 = getelementptr inbounds %struct.pool, %struct.pool* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %78 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @is_factor(i32 %76, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %84 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %85 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SECTOR_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = call i32 @blk_limits_io_min(%struct.queue_limits* %83, i32 %88)
  br label %98

90:                                               ; preds = %73
  %91 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %92 = load %struct.pool*, %struct.pool** %6, align 8
  %93 = getelementptr inbounds %struct.pool, %struct.pool* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SECTOR_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = call i32 @blk_limits_io_min(%struct.queue_limits* %91, i32 %96)
  br label %98

98:                                               ; preds = %90, %82
  %99 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %100 = load %struct.pool*, %struct.pool** %6, align 8
  %101 = getelementptr inbounds %struct.pool, %struct.pool* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SECTOR_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = call i32 @blk_limits_io_opt(%struct.queue_limits* %99, i32 %104)
  br label %106

106:                                              ; preds = %98, %66
  %107 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %108 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %114 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  br label %118

115:                                              ; preds = %106
  %116 = load %struct.pool_c*, %struct.pool_c** %5, align 8
  %117 = call i32 @disable_passdown_if_not_supported(%struct.pool_c* %116)
  br label %118

118:                                              ; preds = %115, %112
  ret void
}

declare dso_local i64 @is_factor(i32, i32) #1

declare dso_local i32 @rounddown_pow_of_two(i32) #1

declare dso_local i32 @blk_limits_io_min(%struct.queue_limits*, i32) #1

declare dso_local i32 @blk_limits_io_opt(%struct.queue_limits*, i32) #1

declare dso_local i32 @disable_passdown_if_not_supported(%struct.pool_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
