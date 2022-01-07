; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_ccc_cmd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_ccc_cmd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_ccc_cmd = type { i32, i32, i32, %struct.i3c_ccc_cmd_dest*, i32 }
%struct.i3c_ccc_cmd_dest = type { i32 }

@I3C_ERROR_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i3c_ccc_cmd*, i32, i32, %struct.i3c_ccc_cmd_dest*, i32)* @i3c_ccc_cmd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd* %0, i32 %1, i32 %2, %struct.i3c_ccc_cmd_dest* %3, i32 %4) #0 {
  %6 = alloca %struct.i3c_ccc_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i3c_ccc_cmd_dest*, align 8
  %10 = alloca i32, align 4
  store %struct.i3c_ccc_cmd* %0, %struct.i3c_ccc_cmd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.i3c_ccc_cmd_dest* %3, %struct.i3c_ccc_cmd_dest** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  %15 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %6, align 8
  %19 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.i3c_ccc_cmd_dest*, %struct.i3c_ccc_cmd_dest** %9, align 8
  %21 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %6, align 8
  %22 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %21, i32 0, i32 3
  store %struct.i3c_ccc_cmd_dest* %20, %struct.i3c_ccc_cmd_dest** %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @I3C_ERROR_UNKNOWN, align 4
  %27 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %6, align 8
  %28 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
