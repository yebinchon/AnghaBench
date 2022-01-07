; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_mailbox_validate_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-reg.c_cdn_dp_mailbox_validate_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*, i32, i32, i32)* @cdn_dp_mailbox_validate_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_mailbox_validate_receive(%struct.cdn_dp_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdn_dp_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %29, %4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %6, align 8
  %19 = call i32 @cdn_dp_mailbox_read(%struct.cdn_dp_device* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %70

24:                                               ; preds = %17
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %27
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  br label %14

32:                                               ; preds = %14
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %34, 8
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %35, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %41 = load i32, i32* %40, align 16
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %44, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %48, %43, %32
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %63, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %6, align 8
  %59 = call i32 @cdn_dp_mailbox_read(%struct.cdn_dp_device* %58)
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %66

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %53

66:                                               ; preds = %61, %53
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %66, %22
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @cdn_dp_mailbox_read(%struct.cdn_dp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
