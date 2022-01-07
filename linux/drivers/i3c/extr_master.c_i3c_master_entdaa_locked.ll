; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_entdaa_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_entdaa_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { i32 }
%struct.i3c_ccc_cmd_dest = type { i32 }
%struct.i3c_ccc_cmd = type { i32 }

@I3C_BROADCAST_ADDR = common dso_local global i32 0, align 4
@I3C_CCC_ENTDAA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i3c_master_entdaa_locked(%struct.i3c_master_controller* %0) #0 {
  %2 = alloca %struct.i3c_master_controller*, align 8
  %3 = alloca %struct.i3c_ccc_cmd_dest, align 4
  %4 = alloca %struct.i3c_ccc_cmd, align 4
  %5 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %2, align 8
  %6 = load i32, i32* @I3C_BROADCAST_ADDR, align 4
  %7 = call i32 @i3c_ccc_cmd_dest_init(%struct.i3c_ccc_cmd_dest* %3, i32 %6, i32 0)
  %8 = load i32, i32* @I3C_CCC_ENTDAA, align 4
  %9 = call i32 @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd* %4, i32 0, i32 %8, %struct.i3c_ccc_cmd_dest* %3, i32 1)
  %10 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %2, align 8
  %11 = call i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller* %10, %struct.i3c_ccc_cmd* %4)
  store i32 %11, i32* %5, align 4
  %12 = call i32 @i3c_ccc_cmd_dest_cleanup(%struct.i3c_ccc_cmd_dest* %3)
  %13 = load i32, i32* %5, align 4
  ret i32 %13
}

declare dso_local i32 @i3c_ccc_cmd_dest_init(%struct.i3c_ccc_cmd_dest*, i32, i32) #1

declare dso_local i32 @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd*, i32, i32, %struct.i3c_ccc_cmd_dest*, i32) #1

declare dso_local i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*) #1

declare dso_local i32 @i3c_ccc_cmd_dest_cleanup(%struct.i3c_ccc_cmd_dest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
