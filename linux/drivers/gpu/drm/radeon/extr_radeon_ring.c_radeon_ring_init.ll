; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ring.c_radeon_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i64, i64 }
%struct.radeon_ring = type { i32, i32, i32, i32, i32, i32, i32*, i64, i32*, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"(%d) ring create failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"(%d) ring pin failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"(%d) ring map failed\0A\00", align 1
@RADEON_WB_RING0_NEXT_RPTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to register debugfs file for rings !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_ring_init(%struct.radeon_device* %0, %struct.radeon_ring* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.radeon_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store %struct.radeon_ring* %1, %struct.radeon_ring** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %16 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %19 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %22 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %24 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %101

27:                                               ; preds = %5
  %28 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %29 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %30 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %34 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %35 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %34, i32 0, i32 8
  %36 = call i32 @radeon_bo_create(%struct.radeon_device* %28, i32 %31, i32 %32, i32 1, i32 %33, i32 0, i32* null, i32* null, i32** %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %157

46:                                               ; preds = %27
  %47 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %48 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %47, i32 0, i32 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @radeon_bo_reserve(i32* %49, i32 0)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %157

58:                                               ; preds = %46
  %59 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %60 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %59, i32 0, i32 8
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %63 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %64 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %63, i32 0, i32 10
  %65 = call i32 @radeon_bo_pin(i32* %61, i32 %62, i32* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %58
  %69 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %70 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %69, i32 0, i32 8
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @radeon_bo_unreserve(i32* %71)
  %73 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %6, align 4
  br label %157

79:                                               ; preds = %58
  %80 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %81 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %80, i32 0, i32 8
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %84 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %83, i32 0, i32 9
  %85 = bitcast i32* %84 to i8**
  %86 = call i32 @radeon_bo_kmap(i32* %82, i8** %85)
  store i32 %86, i32* %12, align 4
  %87 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %88 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %87, i32 0, i32 8
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @radeon_bo_unreserve(i32* %89)
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %79
  %94 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %95 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %6, align 4
  br label %157

100:                                              ; preds = %79
  br label %101

101:                                              ; preds = %100, %5
  %102 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %103 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = udiv i32 %104, 4
  %106 = sub i32 %105, 1
  %107 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %108 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %110 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = udiv i32 %111, 4
  %113 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %114 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  %115 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %116 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %101
  %121 = load i32, i32* @RADEON_WB_RING0_NEXT_RPTR, align 4
  %122 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %123 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %124, 4
  %126 = add nsw i32 %121, %125
  store i32 %126, i32* %13, align 4
  %127 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %130, %132
  %134 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %135 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %134, i32 0, i32 7
  store i64 %133, i64* %135, align 8
  %136 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %137 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sdiv i32 %140, 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %139, i64 %142
  %144 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %145 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %144, i32 0, i32 6
  store i32* %143, i32** %145, align 8
  br label %146

146:                                              ; preds = %120, %101
  %147 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %148 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %149 = call i64 @radeon_debugfs_ring_init(%struct.radeon_device* %147, %struct.radeon_ring* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %146
  %154 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %155 = load %struct.radeon_ring*, %struct.radeon_ring** %8, align 8
  %156 = call i32 @radeon_ring_lockup_update(%struct.radeon_device* %154, %struct.radeon_ring* %155)
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %153, %93, %68, %56, %39
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @radeon_bo_reserve(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @radeon_bo_pin(i32*, i32, i32*) #1

declare dso_local i32 @radeon_bo_unreserve(i32*) #1

declare dso_local i32 @radeon_bo_kmap(i32*, i8**) #1

declare dso_local i64 @radeon_debugfs_ring_init(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @radeon_ring_lockup_update(%struct.radeon_device*, %struct.radeon_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
