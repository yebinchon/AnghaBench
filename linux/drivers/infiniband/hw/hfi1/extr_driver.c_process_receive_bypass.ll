; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_process_receive_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_process_receive_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i32, i8**, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i8*, i8* }

@RHF_RCV_CONTINUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"Bypass packets other than 16B are not supported in normal operation. Dropping\0A\00", align 1
@OPA_EI_STATUS_SMASK = common dso_local global i32 0, align 4
@RHF_LEN_ERR = common dso_local global i32 0, align 4
@BAD_L2_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_packet*)* @process_receive_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_receive_bypass(%struct.hfi1_packet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_packet*, align 8
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i8**, align 8
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %3, align 8
  %6 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %7 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %6, i32 0, i32 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %9, align 8
  store %struct.hfi1_devdata* %10, %struct.hfi1_devdata** %4, align 8
  %11 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %12 = call i64 @hfi1_is_vnic_packet(%struct.hfi1_packet* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %16 = call i32 @hfi1_vnic_bypass_rcv(%struct.hfi1_packet* %15)
  %17 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %17, i32* %2, align 4
  br label %106

18:                                               ; preds = %1
  %19 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %20 = call i64 @hfi1_setup_bypass_packet(%struct.hfi1_packet* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %23, i32* %2, align 4
  br label %106

24:                                               ; preds = %18
  %25 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %26 = call i32 @trace_hfi1_rcvhdr(%struct.hfi1_packet* %25)
  %27 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %28 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @rhf_err_flags(i32 %29)
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %35 = call i32 @handle_eflags(%struct.hfi1_packet* %34)
  %36 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %36, i32* %2, align 4
  br label %106

37:                                               ; preds = %24
  %38 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %39 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hfi1_16B_get_l2(i32 %40)
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %45 = call i32 @hfi1_16B_rcv(%struct.hfi1_packet* %44)
  br label %104

46:                                               ; preds = %37
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %48 = call i32 @dd_dev_err(%struct.hfi1_devdata* %47, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %50 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %49, i32 0, i32 1
  %51 = call i32 @incr_cntr64(i32* %50)
  %52 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %53 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @OPA_EI_STATUS_SMASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %103, label %59

59:                                               ; preds = %46
  %60 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %61 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  store i8** %62, i8*** %5, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %94

65:                                               ; preds = %59
  %66 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %67 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RHF_LEN_ERR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %65
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %77 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i8* %75, i8** %78, align 8
  %79 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %80 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = icmp ugt i64 %82, 8
  br i1 %83, label %84, label %88

84:                                               ; preds = %72
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  %87 = load i8*, i8** %86, align 8
  br label %89

88:                                               ; preds = %72
  br label %89

89:                                               ; preds = %88, %84
  %90 = phi i8* [ %87, %84 ], [ null, %88 ]
  %91 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %92 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  br label %94

94:                                               ; preds = %89, %65, %59
  %95 = load i32, i32* @OPA_EI_STATUS_SMASK, align 4
  %96 = load i32, i32* @BAD_L2_ERR, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %99 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %97
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %94, %46
  br label %104

104:                                              ; preds = %103, %43
  %105 = load i32, i32* @RHF_RCV_CONTINUE, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %33, %22, %14
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i64 @hfi1_is_vnic_packet(%struct.hfi1_packet*) #1

declare dso_local i32 @hfi1_vnic_bypass_rcv(%struct.hfi1_packet*) #1

declare dso_local i64 @hfi1_setup_bypass_packet(%struct.hfi1_packet*) #1

declare dso_local i32 @trace_hfi1_rcvhdr(%struct.hfi1_packet*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rhf_err_flags(i32) #1

declare dso_local i32 @handle_eflags(%struct.hfi1_packet*) #1

declare dso_local i32 @hfi1_16B_get_l2(i32) #1

declare dso_local i32 @hfi1_16B_rcv(%struct.hfi1_packet*) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @incr_cntr64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
