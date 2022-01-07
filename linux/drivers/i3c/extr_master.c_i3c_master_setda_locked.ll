; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_setda_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_setda_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { i32 }
%struct.i3c_ccc_cmd_dest = type { i32 }
%struct.i3c_ccc_setda = type { i32 }
%struct.i3c_ccc_cmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I3C_CCC_SETDASA = common dso_local global i32 0, align 4
@I3C_CCC_SETNEWDA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*, i32, i32, i32)* @i3c_master_setda_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_master_setda_locked(%struct.i3c_master_controller* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i3c_master_controller*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i3c_ccc_cmd_dest, align 4
  %11 = alloca %struct.i3c_ccc_setda*, align 8
  %12 = alloca %struct.i3c_ccc_cmd, align 4
  %13 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16, %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.i3c_ccc_setda* @i3c_ccc_cmd_dest_init(%struct.i3c_ccc_cmd_dest* %10, i32 %23, i32 4)
  store %struct.i3c_ccc_setda* %24, %struct.i3c_ccc_setda** %11, align 8
  %25 = load %struct.i3c_ccc_setda*, %struct.i3c_ccc_setda** %11, align 8
  %26 = icmp ne %struct.i3c_ccc_setda* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %48

30:                                               ; preds = %22
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 %31, 1
  %33 = load %struct.i3c_ccc_setda*, %struct.i3c_ccc_setda** %11, align 8
  %34 = getelementptr inbounds %struct.i3c_ccc_setda, %struct.i3c_ccc_setda* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @I3C_CCC_SETDASA, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @I3C_CCC_SETNEWDA, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd* %12, i32 0, i32 %42, %struct.i3c_ccc_cmd_dest* %10, i32 1)
  %44 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %6, align 8
  %45 = call i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller* %44, %struct.i3c_ccc_cmd* %12)
  store i32 %45, i32* %13, align 4
  %46 = call i32 @i3c_ccc_cmd_dest_cleanup(%struct.i3c_ccc_cmd_dest* %10)
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %41, %27, %19
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.i3c_ccc_setda* @i3c_ccc_cmd_dest_init(%struct.i3c_ccc_cmd_dest*, i32, i32) #1

declare dso_local i32 @i3c_ccc_cmd_init(%struct.i3c_ccc_cmd*, i32, i32, %struct.i3c_ccc_cmd_dest*, i32) #1

declare dso_local i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*) #1

declare dso_local i32 @i3c_ccc_cmd_dest_cleanup(%struct.i3c_ccc_cmd_dest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
