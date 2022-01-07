; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_ret_sg_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_core.c_crypto4xx_ret_sg_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto4xx_device = type { i32 }
%struct.pd_uinfo = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto4xx_device*, %struct.pd_uinfo*)* @crypto4xx_ret_sg_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto4xx_ret_sg_desc(%struct.crypto4xx_device* %0, %struct.pd_uinfo* %1) #0 {
  %3 = alloca %struct.crypto4xx_device*, align 8
  %4 = alloca %struct.pd_uinfo*, align 8
  %5 = alloca i32, align 4
  store %struct.crypto4xx_device* %0, %struct.crypto4xx_device** %3, align 8
  store %struct.pd_uinfo* %1, %struct.pd_uinfo** %4, align 8
  %6 = load %struct.pd_uinfo*, %struct.pd_uinfo** %4, align 8
  %7 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %20, %10
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.pd_uinfo*, %struct.pd_uinfo** %4, align 8
  %14 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %19 = call i32 @crypto4xx_put_gd_to_gdr(%struct.crypto4xx_device* %18)
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %11

23:                                               ; preds = %11
  %24 = load %struct.pd_uinfo*, %struct.pd_uinfo** %4, align 8
  %25 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %24, i32 0, i32 1
  store i32 -1, i32* %25, align 4
  %26 = load %struct.pd_uinfo*, %struct.pd_uinfo** %4, align 8
  %27 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.pd_uinfo*, %struct.pd_uinfo** %4, align 8
  %30 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %43, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.pd_uinfo*, %struct.pd_uinfo** %4, align 8
  %37 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.crypto4xx_device*, %struct.crypto4xx_device** %3, align 8
  %42 = call i32 @crypto4xx_put_sd_to_sdr(%struct.crypto4xx_device* %41)
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %34

46:                                               ; preds = %34
  %47 = load %struct.pd_uinfo*, %struct.pd_uinfo** %4, align 8
  %48 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %47, i32 0, i32 3
  store i32 -1, i32* %48, align 4
  %49 = load %struct.pd_uinfo*, %struct.pd_uinfo** %4, align 8
  %50 = getelementptr inbounds %struct.pd_uinfo, %struct.pd_uinfo* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %28
  ret void
}

declare dso_local i32 @crypto4xx_put_gd_to_gdr(%struct.crypto4xx_device*) #1

declare dso_local i32 @crypto4xx_put_sd_to_sdr(%struct.crypto4xx_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
