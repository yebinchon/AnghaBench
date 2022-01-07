; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_enec_disec_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_enec_disec_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { i32 }
%struct.i3c_ccc_events = type { i32 }
%struct.i3c_ccc_cmd_dest = type { i32 }
%struct.i3c_ccc_cmd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I3C_BROADCAST_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*, i32, i32, i32)* @i3c_master_enec_disec_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_master_enec_disec_locked(%struct.i3c_master_controller* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i3c_master_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i3c_ccc_events*, align 8
  %11 = alloca %struct.i3c_ccc_cmd_dest, align 4
  %12 = alloca %struct.i3c_ccc_cmd, align 4
  %13 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.i3c_ccc_events* @i3c_ccc_cmd_dest_init(%struct.i3c_ccc_cmd_dest* %11, i32 %14, i32 4)
  store %struct.i3c_ccc_events* %15, %struct.i3c_ccc_events** %10, align 8
  %16 = load %struct.i3c_ccc_events*, %struct.i3c_ccc_events** %10, align 8
  %17 = icmp ne %struct.i3c_ccc_events* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %46

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.i3c_ccc_events*, %struct.i3c_ccc_events** %10, align 8
  %24 = getelementptr inbounds %struct.i3c_ccc_events, %struct.i3c_ccc_events* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @I3C_BROADCAST_ADDR, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @I3C_CCC_ENEC(i32 %31)
  br label %39

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @I3C_BROADCAST_ADDR, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @I3C_CCC_DISEC(i32 %37)
  br label %39

39:                                               ; preds = %33, %27
  %40 = phi i32 [ %32, %27 ], [ %38, %33 ]
  %41 = call i32 @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd* %12, i32 0, i32 %40, %struct.i3c_ccc_cmd_dest* %11, i32 1)
  %42 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %6, align 8
  %43 = call i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller* %42, %struct.i3c_ccc_cmd* %12)
  store i32 %43, i32* %13, align 4
  %44 = call i32 @i3c_ccc_cmd_dest_cleanup(%struct.i3c_ccc_cmd_dest* %11)
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %39, %18
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.i3c_ccc_events* @i3c_ccc_cmd_dest_init(%struct.i3c_ccc_cmd_dest*, i32, i32) #1

declare dso_local i32 @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd*, i32, i32, %struct.i3c_ccc_cmd_dest*, i32) #1

declare dso_local i32 @I3C_CCC_ENEC(i32) #1

declare dso_local i32 @I3C_CCC_DISEC(i32) #1

declare dso_local i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*) #1

declare dso_local i32 @i3c_ccc_cmd_dest_cleanup(%struct.i3c_ccc_cmd_dest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
