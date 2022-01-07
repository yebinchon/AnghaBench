; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_get_fabric_wwn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_get_fabric_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }
%struct.srpt_port = type { i8*, i8*, %struct.se_portal_group, %struct.se_portal_group }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.se_portal_group*)* @srpt_get_fabric_wwn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @srpt_get_fabric_wwn(%struct.se_portal_group* %0) #0 {
  %2 = alloca %struct.se_portal_group*, align 8
  %3 = alloca %struct.srpt_port*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %2, align 8
  %4 = load %struct.se_portal_group*, %struct.se_portal_group** %2, align 8
  %5 = call %struct.srpt_port* @srpt_tpg_to_sport(%struct.se_portal_group* %4)
  store %struct.srpt_port* %5, %struct.srpt_port** %3, align 8
  %6 = load %struct.se_portal_group*, %struct.se_portal_group** %2, align 8
  %7 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %8 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %7, i32 0, i32 2
  %9 = icmp ne %struct.se_portal_group* %6, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.se_portal_group*, %struct.se_portal_group** %2, align 8
  %12 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %13 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %12, i32 0, i32 3
  %14 = icmp ne %struct.se_portal_group* %11, %13
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i1 [ false, %1 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON_ONCE(i32 %17)
  %19 = load %struct.se_portal_group*, %struct.se_portal_group** %2, align 8
  %20 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %21 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %20, i32 0, i32 2
  %22 = icmp eq %struct.se_portal_group* %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %25 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  br label %31

27:                                               ; preds = %15
  %28 = load %struct.srpt_port*, %struct.srpt_port** %3, align 8
  %29 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i8* [ %26, %23 ], [ %30, %27 ]
  ret i8* %32
}

declare dso_local %struct.srpt_port* @srpt_tpg_to_sport(%struct.se_portal_group*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
