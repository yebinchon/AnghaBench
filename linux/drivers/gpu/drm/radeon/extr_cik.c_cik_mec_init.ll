; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_mec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_mec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32 }

@CHIP_KAVERI = common dso_local global i64 0, align 8
@MEC_HPD_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RADEON_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"(%d) create HDP EOP bo failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"(%d) pin HDP EOP bo failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"(%d) map HDP EOP bo failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @cik_mec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_mec_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CHIP_KAVERI, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 2, i32* %14, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  br label %19

19:                                               ; preds = %15, %11
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 4, i32* %22, align 4
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %26, %30
  %32 = mul nsw i32 %31, 8
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %71

41:                                               ; preds = %19
  %42 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %46, %50
  %52 = load i32, i32* @MEC_HPD_SIZE, align 4
  %53 = mul nsw i32 %51, %52
  %54 = mul nsw i32 %53, 2
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = call i32 @radeon_bo_create(%struct.radeon_device* %42, i32 %54, i32 %55, i32 1, i32 %56, i32 0, i32* null, i32* null, i32** %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %41
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @dev_warn(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %150

70:                                               ; preds = %41
  br label %71

71:                                               ; preds = %70, %19
  %72 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %73 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @radeon_bo_reserve(i32* %75, i32 0)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = call i32 @cik_mec_fini(%struct.radeon_device* %83)
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* %2, align 4
  br label %150

86:                                               ; preds = %71
  %87 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %88 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* @RADEON_GEM_DOMAIN_GTT, align 4
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 4
  %95 = call i32 @radeon_bo_pin(i32* %90, i32 %91, i32* %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %86
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @dev_warn(i32 %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = call i32 @cik_mec_fini(%struct.radeon_device* %104)
  %106 = load i32, i32* %4, align 4
  store i32 %106, i32* %2, align 4
  br label %150

107:                                              ; preds = %86
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = bitcast i32** %5 to i8**
  %113 = call i32 @radeon_bo_kmap(i32* %111, i8** %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %107
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @dev_warn(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %120)
  %122 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %123 = call i32 @cik_mec_fini(%struct.radeon_device* %122)
  %124 = load i32, i32* %4, align 4
  store i32 %124, i32* %2, align 4
  br label %150

125:                                              ; preds = %107
  %126 = load i32*, i32** %5, align 8
  %127 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %128 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %132 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %130, %134
  %136 = load i32, i32* @MEC_HPD_SIZE, align 4
  %137 = mul nsw i32 %135, %136
  %138 = mul nsw i32 %137, 2
  %139 = call i32 @memset(i32* %126, i32 0, i32 %138)
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @radeon_bo_kunmap(i32* %143)
  %145 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %146 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @radeon_bo_unreserve(i32* %148)
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %125, %116, %98, %82, %63
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @radeon_bo_create(%struct.radeon_device*, i32, i32, i32, i32, i32, i32*, i32*, i32**) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @radeon_bo_reserve(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cik_mec_fini(%struct.radeon_device*) #1

declare dso_local i32 @radeon_bo_pin(i32*, i32, i32*) #1

declare dso_local i32 @radeon_bo_kmap(i32*, i8**) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @radeon_bo_kunmap(i32*) #1

declare dso_local i32 @radeon_bo_unreserve(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
