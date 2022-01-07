; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_msg_header_crc4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_mst_topology.c_drm_dp_msg_header_crc4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @drm_dp_msg_header_crc4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dp_msg_header_crc4(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 128, i32* %5, align 4
  store i32 7, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i64, i64* %4, align 8
  %11 = mul i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %48, %2
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %13
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 %19, 1
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %16
  store i32 128, i32* %5, align 4
  store i32 7, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %16
  %42 = load i32, i32* %9, align 4
  %43 = and i32 %42, 16
  %44 = icmp eq i32 %43, 16
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = xor i32 %46, 19
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %41
  br label %13

49:                                               ; preds = %13
  store i32 4, i32* %8, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = shl i32 %56, 1
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 16
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = xor i32 %62, 19
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %53
  br label %50

65:                                               ; preds = %50
  %66 = load i32, i32* %9, align 4
  ret i32 %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
