; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_term.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-ast-cf.c_fsi_master_acf_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master = type { i32 }
%struct.fsi_master_acf = type { i32, i32 }
%struct.fsi_msg = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"term id %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master*, i32, i32)* @fsi_master_acf_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_master_acf_term(%struct.fsi_master* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsi_master*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsi_master_acf*, align 8
  %9 = alloca %struct.fsi_msg, align 4
  %10 = alloca i32, align 4
  store %struct.fsi_master* %0, %struct.fsi_master** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.fsi_master*, %struct.fsi_master** %5, align 8
  %12 = call %struct.fsi_master_acf* @to_fsi_master_acf(%struct.fsi_master* %11)
  store %struct.fsi_master_acf* %12, %struct.fsi_master_acf** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %8, align 8
  %20 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @build_term_command(%struct.fsi_msg* %9, i32 %22)
  %24 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %8, align 8
  %25 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @fsi_master_acf_xfer(%struct.fsi_master_acf* %29, i32 %30, %struct.fsi_msg* %9, i32 0, i32* null)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @last_address_update(%struct.fsi_master_acf* %32, i32 %33, i32 0, i32 0)
  %35 = load %struct.fsi_master_acf*, %struct.fsi_master_acf** %8, align 8
  %36 = getelementptr inbounds %struct.fsi_master_acf, %struct.fsi_master_acf* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %18, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.fsi_master_acf* @to_fsi_master_acf(%struct.fsi_master*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @build_term_command(%struct.fsi_msg*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @fsi_master_acf_xfer(%struct.fsi_master_acf*, i32, %struct.fsi_msg*, i32, i32*) #1

declare dso_local i32 @last_address_update(%struct.fsi_master_acf*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
