; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_break.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { i32 }
%struct.fsi_master_acf = type { i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sending BREAK\0A\00", align 1
@CMD_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master*, i32)* @fsi_master_acf_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_acf_break(%struct.fsi_master* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fsi_master_acf*, align 8
  %7 = alloca i32, align 4
  store %struct.fsi_master* %0, %struct.fsi_master** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.fsi_master*, %struct.fsi_master** %4, align 8
  %9 = call %struct.fsi_master_acf* @to_fsi_master_acf(%struct.fsi_master* %8)
  store %struct.fsi_master_acf* %9, %struct.fsi_master_acf** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %17 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %20 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %25 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %44

29:                                               ; preds = %15
  %30 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %31 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %35 = load i32, i32* @CMD_BREAK, align 4
  %36 = call i32 @do_copro_command(%struct.fsi_master_acf* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %38 = call i32 @last_address_update(%struct.fsi_master_acf* %37, i32 0, i32 0, i32 0)
  %39 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %6, align 8
  %40 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = call i32 @udelay(i32 200)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %29, %23, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.fsi_master_acf* @to_fsi_master_acf(%struct.fsi_master*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @do_copro_command(%struct.fsi_master_acf*, i32) #1

declare dso_local i32 @last_address_update(%struct.fsi_master_acf*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
