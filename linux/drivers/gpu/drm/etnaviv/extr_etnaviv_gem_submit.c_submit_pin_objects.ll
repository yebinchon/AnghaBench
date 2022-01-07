; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_pin_objects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_pin_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_submit = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, %struct.etnaviv_vram_mapping*, i32, %struct.etnaviv_gem_object* }
%struct.etnaviv_vram_mapping = type { i64 }
%struct.etnaviv_gem_object = type { i32, i32 }

@ETNA_SUBMIT_SOFTPIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@BO_PINNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gem_submit*)* @submit_pin_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_pin_objects(%struct.etnaviv_gem_submit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.etnaviv_gem_submit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.etnaviv_gem_object*, align 8
  %7 = alloca %struct.etnaviv_vram_mapping*, align 8
  store %struct.etnaviv_gem_submit* %0, %struct.etnaviv_gem_submit** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %88, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %11 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %91

14:                                               ; preds = %8
  %15 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %21, align 8
  store %struct.etnaviv_gem_object* %22, %struct.etnaviv_gem_object** %6, align 8
  %23 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %6, align 8
  %24 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %23, i32 0, i32 1
  %25 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %26 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %29 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call %struct.etnaviv_vram_mapping* @etnaviv_gem_mapping_get(i32* %24, i32 %27, i64 %35)
  store %struct.etnaviv_vram_mapping* %36, %struct.etnaviv_vram_mapping** %7, align 8
  %37 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %7, align 8
  %38 = call i64 @IS_ERR(%struct.etnaviv_vram_mapping* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %14
  %41 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %7, align 8
  %42 = call i32 @PTR_ERR(%struct.etnaviv_vram_mapping* %41)
  store i32 %42, i32* %5, align 4
  br label %91

43:                                               ; preds = %14
  %44 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %45 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETNA_SUBMIT_SOFTPIN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %52 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %7, align 8
  %60 = getelementptr inbounds %struct.etnaviv_vram_mapping, %struct.etnaviv_vram_mapping* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %93

66:                                               ; preds = %50, %43
  %67 = load %struct.etnaviv_gem_object*, %struct.etnaviv_gem_object** %6, align 8
  %68 = getelementptr inbounds %struct.etnaviv_gem_object, %struct.etnaviv_gem_object* %67, i32 0, i32 0
  %69 = call i32 @atomic_inc(i32* %68)
  %70 = load i32, i32* @BO_PINNED, align 4
  %71 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %72 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %70
  store i32 %79, i32* %77, align 8
  %80 = load %struct.etnaviv_vram_mapping*, %struct.etnaviv_vram_mapping** %7, align 8
  %81 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %3, align 8
  %82 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store %struct.etnaviv_vram_mapping* %80, %struct.etnaviv_vram_mapping** %87, align 8
  br label %88

88:                                               ; preds = %66
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %8

91:                                               ; preds = %40, %8
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %91, %63
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.etnaviv_vram_mapping* @etnaviv_gem_mapping_get(i32*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.etnaviv_vram_mapping*) #1

declare dso_local i32 @PTR_ERR(%struct.etnaviv_vram_mapping*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
