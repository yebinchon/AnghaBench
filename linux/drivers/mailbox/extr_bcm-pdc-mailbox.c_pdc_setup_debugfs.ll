; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_setup_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_setup_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"pdc%d_stats\00", align 1
@debugfs_dir = common dso_local global i64 0, align 8
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@pdc_debugfs_stats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdc_state*)* @pdc_setup_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_setup_debugfs(%struct.pdc_state* %0) #0 {
  %2 = alloca %struct.pdc_state*, align 8
  %3 = alloca [16 x i8], align 16
  store %struct.pdc_state* %0, %struct.pdc_state** %2, align 8
  %4 = call i32 (...) @debugfs_initialized()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %23

7:                                                ; preds = %1
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %9 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %10 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @snprintf(i8* %8, i32 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i64, i64* @debugfs_dir, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = load i32, i32* @KBUILD_MODNAME, align 4
  %17 = call i64 @debugfs_create_dir(i32 %16, i32* null)
  store i64 %17, i64* @debugfs_dir, align 8
  br label %18

18:                                               ; preds = %15, %7
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %20 = load i64, i64* @debugfs_dir, align 8
  %21 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %22 = call i32 @debugfs_create_file(i8* %19, i32 256, i64 %20, %struct.pdc_state* %21, i32* @pdc_debugfs_stats)
  br label %23

23:                                               ; preds = %18, %6
  ret void
}

declare dso_local i32 @debugfs_initialized(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i64, %struct.pdc_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
