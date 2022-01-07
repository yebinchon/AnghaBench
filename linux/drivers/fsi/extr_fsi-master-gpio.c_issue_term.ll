; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_issue_term.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-master-gpio.c_issue_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_master_gpio = type { i32 }
%struct.fsi_gpio_msg = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"TERM failed; lost communication with slave\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FSI_RESP_ACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"TERM failed; response %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_master_gpio*, i64)* @issue_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @issue_term(%struct.fsi_master_gpio* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsi_master_gpio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fsi_gpio_msg, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.fsi_master_gpio* %0, %struct.fsi_master_gpio** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @build_term_command(%struct.fsi_gpio_msg* %6, i64 %10)
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %15 = call i32 @serial_out(%struct.fsi_master_gpio* %14, %struct.fsi_gpio_msg* %6)
  %16 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %17 = call i32 @echo_delay(%struct.fsi_master_gpio* %16)
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @local_irq_restore(i64 %18)
  %20 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %21 = call i32 @read_one_response(%struct.fsi_master_gpio* %20, i32 0, i32* null, i64* %8)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %26 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %2
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @FSI_RESP_ACK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.fsi_master_gpio*, %struct.fsi_master_gpio** %4, align 8
  %37 = getelementptr inbounds %struct.fsi_master_gpio, %struct.fsi_master_gpio* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %8, align 8
  %40 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %45

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %35, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @build_term_command(%struct.fsi_gpio_msg*, i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @serial_out(%struct.fsi_master_gpio*, %struct.fsi_gpio_msg*) #1

declare dso_local i32 @echo_delay(%struct.fsi_master_gpio*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @read_one_response(%struct.fsi_master_gpio*, i32, i32*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
