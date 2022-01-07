; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_fence = type { i32 }
%struct.radeon_ib = type { i32*, i32, i32 }

@UVD_GPCOM_VCPU_DATA0 = common dso_local global i32 0, align 4
@UVD_GPCOM_VCPU_DATA1 = common dso_local global i32 0, align 4
@UVD_GPCOM_VCPU_CMD = common dso_local global i32 0, align 4
@UVD_NO_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32, %struct.radeon_fence**)* @radeon_uvd_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_uvd_send_msg(%struct.radeon_device* %0, i32 %1, i32 %2, %struct.radeon_fence** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.radeon_fence**, align 8
  %10 = alloca %struct.radeon_ib, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.radeon_fence** %3, %struct.radeon_fence*** %9, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @radeon_ib_get(%struct.radeon_device* %13, i32 %14, %struct.radeon_ib* %10, i32* null, i32 64)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %87

20:                                               ; preds = %4
  %21 = load i32, i32* @UVD_GPCOM_VCPU_DATA0, align 4
  %22 = call i8* @PACKET0(i32 %21, i32 0)
  %23 = ptrtoint i8* %22 to i32
  %24 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @UVD_GPCOM_VCPU_DATA1, align 4
  %32 = call i8* @PACKET0(i32 %31, i32 0)
  %33 = ptrtoint i8* %32 to i32
  %34 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 32
  %39 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @UVD_GPCOM_VCPU_CMD, align 4
  %43 = call i8* @PACKET0(i32 %42, i32 0)
  %44 = ptrtoint i8* %43 to i32
  %45 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  store i32 %44, i32* %47, align 4
  %48 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  store i32 0, i32* %50, align 4
  store i32 6, i32* %11, align 4
  br label %51

51:                                               ; preds = %69, %20
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 16
  br i1 %53, label %54, label %72

54:                                               ; preds = %51
  %55 = load i32, i32* @UVD_NO_OP, align 4
  %56 = call i8* @PACKET0(i32 %55, i32 0)
  %57 = ptrtoint i8* %56 to i32
  %58 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %11, align 4
  br label %51

72:                                               ; preds = %51
  %73 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 1
  store i32 16, i32* %73, align 8
  %74 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %75 = call i32 @radeon_ib_schedule(%struct.radeon_device* %74, %struct.radeon_ib* %10, i32* null, i32 0)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.radeon_fence**, %struct.radeon_fence*** %9, align 8
  %77 = icmp ne %struct.radeon_fence** %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.radeon_ib, %struct.radeon_ib* %10, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.radeon_fence* @radeon_fence_ref(i32 %80)
  %82 = load %struct.radeon_fence**, %struct.radeon_fence*** %9, align 8
  store %struct.radeon_fence* %81, %struct.radeon_fence** %82, align 8
  br label %83

83:                                               ; preds = %78, %72
  %84 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %85 = call i32 @radeon_ib_free(%struct.radeon_device* %84, %struct.radeon_ib* %10)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %18
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @radeon_ib_get(%struct.radeon_device*, i32, %struct.radeon_ib*, i32*, i32) #1

declare dso_local i8* @PACKET0(i32, i32) #1

declare dso_local i32 @radeon_ib_schedule(%struct.radeon_device*, %struct.radeon_ib*, i32*, i32) #1

declare dso_local %struct.radeon_fence* @radeon_fence_ref(i32) #1

declare dso_local i32 @radeon_ib_free(%struct.radeon_device*, %struct.radeon_ib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
