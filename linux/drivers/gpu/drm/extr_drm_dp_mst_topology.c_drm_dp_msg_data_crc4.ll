; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_msg_data_crc4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_msg_data_crc4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @drm_dp_msg_data_crc4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_msg_data_crc4(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 128, i32* %5, align 4
  store i32 7, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 8
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %47, %2
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %12
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = shl i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = ashr i32 %26, %27
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %15
  store i32 128, i32* %5, align 4
  store i32 7, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %15
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 256
  %43 = icmp eq i32 %42, 256
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = xor i32 %45, 213
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %40
  br label %12

48:                                               ; preds = %12
  store i32 8, i32* %8, align 4
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = shl i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 256
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* %9, align 4
  %62 = xor i32 %61, 213
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %52
  br label %49

64:                                               ; preds = %49
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 255
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
