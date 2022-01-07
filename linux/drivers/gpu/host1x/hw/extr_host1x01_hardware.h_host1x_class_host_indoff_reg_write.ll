; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_host1x01_hardware.h_host1x_class_host_indoff_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/hw/extr_host1x01_hardware.h_host1x_class_host_indoff_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @host1x_class_host_indoff_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host1x_class_host_indoff_reg_write(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 @host1x_uclass_indoff_indbe_f(i32 15)
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @host1x_uclass_indoff_indmodid_f(i32 %9)
  %11 = or i32 %8, %10
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @host1x_uclass_indoff_indroffset_f(i32 %12)
  %14 = or i32 %11, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = call i32 @host1x_uclass_indoff_autoinc_f(i32 1)
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %7, align 4
  ret i32 %22
}

declare dso_local i32 @host1x_uclass_indoff_indbe_f(i32) #1

declare dso_local i32 @host1x_uclass_indoff_indmodid_f(i32) #1

declare dso_local i32 @host1x_uclass_indoff_indroffset_f(i32) #1

declare dso_local i32 @host1x_uclass_indoff_autoinc_f(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
