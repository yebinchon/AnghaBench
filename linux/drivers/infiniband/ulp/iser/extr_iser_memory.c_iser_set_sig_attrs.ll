; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_set_sig_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_set_sig_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.ib_sig_attrs = type { %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@IB_SIG_TYPE_NONE = common dso_local global i8* null, align 8
@IB_T10DIF_CRC = common dso_local global i8* null, align 8
@SCSI_PROT_IP_CHECKSUM = common dso_local global i32 0, align 4
@IB_T10DIF_CSUM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unsupported PI operation %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.ib_sig_attrs*)* @iser_set_sig_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_set_sig_attrs(%struct.scsi_cmnd* %0, %struct.ib_sig_attrs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.ib_sig_attrs*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.ib_sig_attrs* %1, %struct.ib_sig_attrs** %5, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %7 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %6)
  switch i32 %7, label %81 [
    i32 130, label %8
    i32 131, label %8
    i32 133, label %23
    i32 128, label %23
    i32 132, label %49
    i32 129, label %49
  ]

8:                                                ; preds = %2, %2
  %9 = load i8*, i8** @IB_SIG_TYPE_NONE, align 8
  %10 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %11 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  store i8* %9, i8** %12, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %15 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %14, i32 0, i32 1
  %16 = call i32 @iser_set_dif_domain(%struct.scsi_cmnd* %13, %struct.TYPE_6__* %15)
  %17 = load i8*, i8** @IB_T10DIF_CRC, align 8
  %18 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %19 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i8* %17, i8** %22, align 8
  br label %87

23:                                               ; preds = %2, %2
  %24 = load i8*, i8** @IB_SIG_TYPE_NONE, align 8
  %25 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %26 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store i8* %24, i8** %27, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %29 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %30 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %29, i32 0, i32 0
  %31 = call i32 @iser_set_dif_domain(%struct.scsi_cmnd* %28, %struct.TYPE_6__* %30)
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SCSI_PROT_IP_CHECKSUM, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load i8*, i8** @IB_T10DIF_CSUM, align 8
  br label %42

40:                                               ; preds = %23
  %41 = load i8*, i8** @IB_T10DIF_CRC, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i8* [ %39, %38 ], [ %41, %40 ]
  %44 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %45 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i8* %43, i8** %48, align 8
  br label %87

49:                                               ; preds = %2, %2
  %50 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %51 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %52 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %51, i32 0, i32 1
  %53 = call i32 @iser_set_dif_domain(%struct.scsi_cmnd* %50, %struct.TYPE_6__* %52)
  %54 = load i8*, i8** @IB_T10DIF_CRC, align 8
  %55 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %56 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i8* %54, i8** %59, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %62 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %61, i32 0, i32 0
  %63 = call i32 @iser_set_dif_domain(%struct.scsi_cmnd* %60, %struct.TYPE_6__* %62)
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SCSI_PROT_IP_CHECKSUM, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %49
  %71 = load i8*, i8** @IB_T10DIF_CSUM, align 8
  br label %74

72:                                               ; preds = %49
  %73 = load i8*, i8** @IB_T10DIF_CRC, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i8* [ %71, %70 ], [ %73, %72 ]
  %76 = load %struct.ib_sig_attrs*, %struct.ib_sig_attrs** %5, align 8
  %77 = getelementptr inbounds %struct.ib_sig_attrs, %struct.ib_sig_attrs* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i8* %75, i8** %80, align 8
  br label %87

81:                                               ; preds = %2
  %82 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %83 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %82)
  %84 = call i32 @iser_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %88

87:                                               ; preds = %74, %42, %8
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %81
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @iser_set_dif_domain(%struct.scsi_cmnd*, %struct.TYPE_6__*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
