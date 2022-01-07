; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_show_eflags_errs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_show_eflags_errs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i32, %struct.hfi1_ctxtdata* }
%struct.hfi1_ctxtdata = type { i32, i32 }

@.str = private unnamed_addr constant [68 x i8] c"receive context %d: rhf 0x%016llx, errs [ %s%s%s%s%s%s%s] rte 0x%x\0A\00", align 1
@RHF_K_HDR_LEN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"k_hdr_len \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RHF_DC_UNC_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"dc_unc \00", align 1
@RHF_DC_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"dc \00", align 1
@RHF_TID_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"tid \00", align 1
@RHF_LEN_ERR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"len \00", align 1
@RHF_ECC_ERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"ecc \00", align 1
@RHF_ICRC_ERR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"icrc \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_packet*)* @show_eflags_errs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_eflags_errs(%struct.hfi1_packet* %0) #0 {
  %2 = alloca %struct.hfi1_packet*, align 8
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %2, align 8
  %5 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %6 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %5, i32 0, i32 1
  %7 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  store %struct.hfi1_ctxtdata* %7, %struct.hfi1_ctxtdata** %3, align 8
  %8 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %9 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @rhf_rcv_type_err(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %13 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %16 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %19 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %22 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RHF_K_HDR_LEN_ERR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %29 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %30 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @RHF_DC_UNC_ERR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %38 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RHF_DC_ERR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %45 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %46 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RHF_TID_ERR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %54 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @RHF_LEN_ERR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %61 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %62 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @RHF_ECC_ERR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %69 = load %struct.hfi1_packet*, %struct.hfi1_packet** %2, align 8
  %70 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @RHF_ICRC_ERR, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @dd_dev_err(i32 %14, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i8* %28, i8* %36, i8* %44, i8* %52, i8* %60, i8* %68, i8* %76, i32 %77)
  ret void
}

declare dso_local i32 @rhf_rcv_type_err(i32) #1

declare dso_local i32 @dd_dev_err(i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
