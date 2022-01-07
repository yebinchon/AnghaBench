; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_tail_img.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_tail_img.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_suof_img_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_suof_img_hdr*, i32, i32)* @qat_uclo_tail_img to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_uclo_tail_img(%struct.icp_qat_suof_img_hdr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.icp_qat_suof_img_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.icp_qat_suof_img_hdr, align 4
  store %struct.icp_qat_suof_img_hdr* %0, %struct.icp_qat_suof_img_hdr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %9, 1
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %3
  %13 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sub i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %13, i64 %16
  %18 = call i32 @memcpy(%struct.icp_qat_suof_img_hdr* %7, %struct.icp_qat_suof_img_hdr* %17, i32 4)
  %19 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sub i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %19, i64 %22
  %24 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %24, i64 %26
  %28 = call i32 @memcpy(%struct.icp_qat_suof_img_hdr* %23, %struct.icp_qat_suof_img_hdr* %27, i32 4)
  %29 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %29, i64 %31
  %33 = call i32 @memcpy(%struct.icp_qat_suof_img_hdr* %32, %struct.icp_qat_suof_img_hdr* %7, i32 4)
  br label %34

34:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @memcpy(%struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
