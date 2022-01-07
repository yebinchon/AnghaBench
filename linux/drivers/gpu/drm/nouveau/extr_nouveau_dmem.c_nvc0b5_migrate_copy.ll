; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nvc0b5_migrate_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_dmem.c_nvc0b5_migrate_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nouveau_channel* }
%struct.nouveau_channel = type { i32 }

@NOUVEAU_APER_VIRT = common dso_local global i32 0, align 4
@NvSubCopy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_drm*, i32, i32, i32, i32, i32)* @nvc0b5_migrate_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvc0b5_migrate_copy(%struct.nouveau_drm* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nouveau_channel*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nouveau_drm* %0, %struct.nouveau_drm** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.nouveau_channel*, %struct.nouveau_channel** %21, align 8
  store %struct.nouveau_channel* %22, %struct.nouveau_channel** %14, align 8
  store i32 902, i32* %15, align 4
  %23 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %24 = call i32 @RING_SPACE(%struct.nouveau_channel* %23, i32 13)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %7, align 4
  br label %107

29:                                               ; preds = %6
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @NOUVEAU_APER_VIRT, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29
  %34 = load i32, i32* %12, align 4
  switch i32 %34, label %43 [
    i32 128, label %35
    i32 129, label %39
  ]

35:                                               ; preds = %33
  %36 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %37 = load i32, i32* @NvSubCopy, align 4
  %38 = call i32 @BEGIN_IMC0(%struct.nouveau_channel* %36, i32 %37, i32 608, i32 0)
  br label %46

39:                                               ; preds = %33
  %40 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %41 = load i32, i32* @NvSubCopy, align 4
  %42 = call i32 @BEGIN_IMC0(%struct.nouveau_channel* %40, i32 %41, i32 608, i32 1)
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %107

46:                                               ; preds = %39, %35
  %47 = load i32, i32* %15, align 4
  %48 = or i32 %47, 4096
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %46, %29
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @NOUVEAU_APER_VIRT, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  switch i32 %54, label %63 [
    i32 128, label %55
    i32 129, label %59
  ]

55:                                               ; preds = %53
  %56 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %57 = load i32, i32* @NvSubCopy, align 4
  %58 = call i32 @BEGIN_IMC0(%struct.nouveau_channel* %56, i32 %57, i32 612, i32 0)
  br label %66

59:                                               ; preds = %53
  %60 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %61 = load i32, i32* @NvSubCopy, align 4
  %62 = call i32 @BEGIN_IMC0(%struct.nouveau_channel* %60, i32 %61, i32 612, i32 1)
  br label %66

63:                                               ; preds = %53
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %107

66:                                               ; preds = %59, %55
  %67 = load i32, i32* %15, align 4
  %68 = or i32 %67, 8192
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %66, %49
  %70 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %71 = load i32, i32* @NvSubCopy, align 4
  %72 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %70, i32 %71, i32 1024, i32 8)
  %73 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @upper_32_bits(i32 %74)
  %76 = call i32 @OUT_RING(%struct.nouveau_channel* %73, i32 %75)
  %77 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @lower_32_bits(i32 %78)
  %80 = call i32 @OUT_RING(%struct.nouveau_channel* %77, i32 %79)
  %81 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @upper_32_bits(i32 %82)
  %84 = call i32 @OUT_RING(%struct.nouveau_channel* %81, i32 %83)
  %85 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @lower_32_bits(i32 %86)
  %88 = call i32 @OUT_RING(%struct.nouveau_channel* %85, i32 %87)
  %89 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = call i32 @OUT_RING(%struct.nouveau_channel* %89, i32 %90)
  %92 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = call i32 @OUT_RING(%struct.nouveau_channel* %92, i32 %93)
  %95 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = call i32 @OUT_RING(%struct.nouveau_channel* %95, i32 %96)
  %98 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @OUT_RING(%struct.nouveau_channel* %98, i32 %99)
  %101 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %102 = load i32, i32* @NvSubCopy, align 4
  %103 = call i32 @BEGIN_NVC0(%struct.nouveau_channel* %101, i32 %102, i32 768, i32 1)
  %104 = load %struct.nouveau_channel*, %struct.nouveau_channel** %14, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @OUT_RING(%struct.nouveau_channel* %104, i32 %105)
  store i32 0, i32* %7, align 4
  br label %107

107:                                              ; preds = %69, %63, %43, %27
  %108 = load i32, i32* %7, align 4
  ret i32 %108
}

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @BEGIN_IMC0(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @BEGIN_NVC0(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
