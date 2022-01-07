; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_make_tpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_make_tpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }
%struct.se_wwn = type { %struct.srpt_port* }
%struct.srpt_port = type { %struct.se_portal_group, %struct.se_portal_group, %struct.se_wwn, %struct.se_wwn }

@SCSI_PROTOCOL_SRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.se_portal_group* (%struct.se_wwn*, i8*)* @srpt_make_tpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.se_portal_group* @srpt_make_tpg(%struct.se_wwn* %0, i8* %1) #0 {
  %3 = alloca %struct.se_portal_group*, align 8
  %4 = alloca %struct.se_wwn*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.srpt_port*, align 8
  %7 = alloca %struct.se_portal_group*, align 8
  %8 = alloca i32, align 4
  store %struct.se_wwn* %0, %struct.se_wwn** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.se_wwn*, %struct.se_wwn** %4, align 8
  %10 = getelementptr inbounds %struct.se_wwn, %struct.se_wwn* %9, i32 0, i32 0
  %11 = load %struct.srpt_port*, %struct.srpt_port** %10, align 8
  store %struct.srpt_port* %11, %struct.srpt_port** %6, align 8
  %12 = load %struct.se_wwn*, %struct.se_wwn** %4, align 8
  %13 = load %struct.srpt_port*, %struct.srpt_port** %6, align 8
  %14 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %13, i32 0, i32 2
  %15 = icmp ne %struct.se_wwn* %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.se_wwn*, %struct.se_wwn** %4, align 8
  %18 = load %struct.srpt_port*, %struct.srpt_port** %6, align 8
  %19 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %18, i32 0, i32 3
  %20 = icmp ne %struct.se_wwn* %17, %19
  br label %21

21:                                               ; preds = %16, %2
  %22 = phi i1 [ false, %2 ], [ %20, %16 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  %25 = load %struct.se_wwn*, %struct.se_wwn** %4, align 8
  %26 = load %struct.srpt_port*, %struct.srpt_port** %6, align 8
  %27 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %26, i32 0, i32 2
  %28 = icmp eq %struct.se_wwn* %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.srpt_port*, %struct.srpt_port** %6, align 8
  %31 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %30, i32 0, i32 1
  br label %35

32:                                               ; preds = %21
  %33 = load %struct.srpt_port*, %struct.srpt_port** %6, align 8
  %34 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %33, i32 0, i32 0
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi %struct.se_portal_group* [ %31, %29 ], [ %34, %32 ]
  store %struct.se_portal_group* %36, %struct.se_portal_group** %7, align 8
  %37 = load %struct.se_wwn*, %struct.se_wwn** %4, align 8
  %38 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  %39 = load i32, i32* @SCSI_PROTOCOL_SRP, align 4
  %40 = call i32 @core_tpg_register(%struct.se_wwn* %37, %struct.se_portal_group* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = call %struct.se_portal_group* @ERR_PTR(i32 %44)
  store %struct.se_portal_group* %45, %struct.se_portal_group** %3, align 8
  br label %48

46:                                               ; preds = %35
  %47 = load %struct.se_portal_group*, %struct.se_portal_group** %7, align 8
  store %struct.se_portal_group* %47, %struct.se_portal_group** %3, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load %struct.se_portal_group*, %struct.se_portal_group** %3, align 8
  ret %struct.se_portal_group* %49
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @core_tpg_register(%struct.se_wwn*, %struct.se_portal_group*, i32) #1

declare dso_local %struct.se_portal_group* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
