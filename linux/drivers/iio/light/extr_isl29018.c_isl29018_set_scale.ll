; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_set_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_isl29018.c_isl29018_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isl29018_scale = type { i32, i32 }
%struct.isl29018_chip = type { i64, %struct.isl29018_scale, i32 }

@isl29018_scales = common dso_local global %struct.isl29018_scale** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@ISL29018_REG_ADD_COMMAND2 = common dso_local global i32 0, align 4
@ISL29018_CMD2_RANGE_MASK = common dso_local global i32 0, align 4
@ISL29018_CMD2_RANGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isl29018_chip*, i32, i32)* @isl29018_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isl29018_set_scale(%struct.isl29018_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.isl29018_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.isl29018_scale, align 4
  store %struct.isl29018_chip* %0, %struct.isl29018_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %62, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.isl29018_scale**, %struct.isl29018_scale*** @isl29018_scales, align 8
  %14 = load %struct.isl29018_chip*, %struct.isl29018_chip** %5, align 8
  %15 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.isl29018_scale*, %struct.isl29018_scale** %13, i64 %16
  %18 = load %struct.isl29018_scale*, %struct.isl29018_scale** %17, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.isl29018_scale* %18)
  %20 = icmp ult i32 %12, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %11
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.isl29018_scale**, %struct.isl29018_scale*** @isl29018_scales, align 8
  %24 = load %struct.isl29018_chip*, %struct.isl29018_chip** %5, align 8
  %25 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.isl29018_scale*, %struct.isl29018_scale** %23, i64 %26
  %28 = load %struct.isl29018_scale*, %struct.isl29018_scale** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.isl29018_scale, %struct.isl29018_scale* %28, i64 %30
  %32 = getelementptr inbounds %struct.isl29018_scale, %struct.isl29018_scale* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %22, %33
  br i1 %34, label %35, label %61

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.isl29018_scale**, %struct.isl29018_scale*** @isl29018_scales, align 8
  %38 = load %struct.isl29018_chip*, %struct.isl29018_chip** %5, align 8
  %39 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.isl29018_scale*, %struct.isl29018_scale** %37, i64 %40
  %42 = load %struct.isl29018_scale*, %struct.isl29018_scale** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.isl29018_scale, %struct.isl29018_scale* %42, i64 %44
  %46 = getelementptr inbounds %struct.isl29018_scale, %struct.isl29018_scale* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %36, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %35
  %50 = load %struct.isl29018_scale**, %struct.isl29018_scale*** @isl29018_scales, align 8
  %51 = load %struct.isl29018_chip*, %struct.isl29018_chip** %5, align 8
  %52 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.isl29018_scale*, %struct.isl29018_scale** %50, i64 %53
  %55 = load %struct.isl29018_scale*, %struct.isl29018_scale** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.isl29018_scale, %struct.isl29018_scale* %55, i64 %57
  %59 = bitcast %struct.isl29018_scale* %10 to i8*
  %60 = bitcast %struct.isl29018_scale* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 8, i1 false)
  br label %65

61:                                               ; preds = %35, %21
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %11

65:                                               ; preds = %49, %11
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.isl29018_scale**, %struct.isl29018_scale*** @isl29018_scales, align 8
  %68 = load %struct.isl29018_chip*, %struct.isl29018_chip** %5, align 8
  %69 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.isl29018_scale*, %struct.isl29018_scale** %67, i64 %70
  %72 = load %struct.isl29018_scale*, %struct.isl29018_scale** %71, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.isl29018_scale* %72)
  %74 = icmp uge i32 %66, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %97

78:                                               ; preds = %65
  %79 = load %struct.isl29018_chip*, %struct.isl29018_chip** %5, align 8
  %80 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ISL29018_REG_ADD_COMMAND2, align 4
  %83 = load i32, i32* @ISL29018_CMD2_RANGE_MASK, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @ISL29018_CMD2_RANGE_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = call i32 @regmap_update_bits(i32 %81, i32 %82, i32 %83, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %97

92:                                               ; preds = %78
  %93 = load %struct.isl29018_chip*, %struct.isl29018_chip** %5, align 8
  %94 = getelementptr inbounds %struct.isl29018_chip, %struct.isl29018_chip* %93, i32 0, i32 1
  %95 = bitcast %struct.isl29018_scale* %94 to i8*
  %96 = bitcast %struct.isl29018_scale* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 4 %96, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %92, %90, %75
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @ARRAY_SIZE(%struct.isl29018_scale*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
