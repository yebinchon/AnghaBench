; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_set_dif_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_set_dif_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32 }
%struct.ib_sig_domain = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@IB_SIG_TYPE_T10_DIF = common dso_local global i32 0, align 4
@SCSI_PROT_REF_INCREMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, %struct.ib_sig_domain*)* @iser_set_dif_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_set_dif_domain(%struct.scsi_cmnd* %0, %struct.ib_sig_domain* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.ib_sig_domain*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.ib_sig_domain* %1, %struct.ib_sig_domain** %4, align 8
  %5 = load i32, i32* @IB_SIG_TYPE_T10_DIF, align 4
  %6 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %7 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %9 = call i32 @scsi_prot_interval(%struct.scsi_cmnd* %8)
  %10 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %11 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 5
  store i32 %9, i32* %13, align 4
  %14 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %15 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @t10_pi_ref_tag(i32 %16)
  %18 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %19 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store i32 %17, i32* %21, align 4
  %22 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %23 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 65535, i32* %25, align 4
  %26 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %27 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %31 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 1, i32* %33, align 4
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SCSI_PROT_REF_INCREMENT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.ib_sig_domain*, %struct.ib_sig_domain** %4, align 8
  %42 = getelementptr inbounds %struct.ib_sig_domain, %struct.ib_sig_domain* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %2
  ret void
}

declare dso_local i32 @scsi_prot_interval(%struct.scsi_cmnd*) #1

declare dso_local i32 @t10_pi_ref_tag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
