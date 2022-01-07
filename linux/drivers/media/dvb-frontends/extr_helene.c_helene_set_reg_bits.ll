; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_helene.c_helene_set_reg_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_helene.c_helene_set_reg_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.helene_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.helene_priv*, i32, i32, i32)* @helene_set_reg_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @helene_set_reg_bits(%struct.helene_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.helene_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.helene_priv* %0, %struct.helene_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 255
  br i1 %13, label %14, label %31

14:                                               ; preds = %4
  %15 = load %struct.helene_priv*, %struct.helene_priv** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @helene_read_reg(%struct.helene_priv* %15, i32 %16, i32* %11)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %36

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = xor i32 %27, 255
  %29 = and i32 %26, %28
  %30 = or i32 %25, %29
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %22, %4
  %32 = load %struct.helene_priv*, %struct.helene_priv** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @helene_write_reg(%struct.helene_priv* %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %31, %20
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @helene_read_reg(%struct.helene_priv*, i32, i32*) #1

declare dso_local i32 @helene_write_reg(%struct.helene_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
