; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_create_stag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_create_stag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, i32, i32 }

@I40IW_CQPSQ_STAG_IDX_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*)* @i40iw_create_stag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_create_stag(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = call i32 @get_random_bytes(i32* %7, i32 4)
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %15 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %21 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  %24 = ashr i32 %23, 8
  store i32 %24, i32* %5, align 4
  %25 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %26 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = srem i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %31 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %32 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %35 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @i40iw_alloc_resource(%struct.i40iw_device* %30, i32 %33, i32 %36, i32* %4, i32* %5)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @I40IW_CQPSQ_STAG_IDX_SHIFT, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i64, i64* %8, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %52 = call i32 @i40iw_add_devusecount(%struct.i40iw_device* %51)
  br label %53

53:                                               ; preds = %40, %1
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @i40iw_alloc_resource(%struct.i40iw_device*, i32, i32, i32*, i32*) #1

declare dso_local i32 @i40iw_add_devusecount(%struct.i40iw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
