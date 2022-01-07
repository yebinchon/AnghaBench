; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_handle_ce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_ppc4xx_edac.c_ppc4xx_edac_handle_ce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.ppc4xx_ecc_status = type { i32 }

@PPC4XX_EDAC_MESSAGE_SIZE = common dso_local global i32 0, align 4
@HW_EVENT_ERR_CORRECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*)* @ppc4xx_edac_handle_ce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc4xx_edac_handle_ce(%struct.mem_ctl_info* %0, %struct.ppc4xx_ecc_status* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.ppc4xx_ecc_status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.ppc4xx_ecc_status* %1, %struct.ppc4xx_ecc_status** %4, align 8
  %8 = load i32, i32* @PPC4XX_EDAC_MESSAGE_SIZE, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %13 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %4, align 8
  %14 = trunc i64 %9 to i32
  %15 = call i32 @ppc4xx_edac_generate_message(%struct.mem_ctl_info* %12, %struct.ppc4xx_ecc_status* %13, i8* %11, i32 %14)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %33, %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %19 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.ppc4xx_ecc_status*, %struct.ppc4xx_ecc_status** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @ppc4xx_edac_check_bank_error(%struct.ppc4xx_ecc_status* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @HW_EVENT_ERR_CORRECTED, align 4
  %29 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @edac_mc_handle_error(i32 %28, %struct.mem_ctl_info* %29, i32 1, i32 0, i32 0, i32 0, i32 %30, i32 0, i32 -1, i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %22
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %37)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ppc4xx_edac_generate_message(%struct.mem_ctl_info*, %struct.ppc4xx_ecc_status*, i8*, i32) #2

declare dso_local i64 @ppc4xx_edac_check_bank_error(%struct.ppc4xx_ecc_status*, i32) #2

declare dso_local i32 @edac_mc_handle_error(i32, %struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
