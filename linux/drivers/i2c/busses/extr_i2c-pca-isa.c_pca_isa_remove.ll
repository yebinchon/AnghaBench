; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pca-isa.c_pca_isa_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-pca-isa.c_pca_isa_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@pca_isa_ops = common dso_local global i32 0, align 4
@irq = common dso_local global i32 0, align 4
@base = common dso_local global i32 0, align 4
@IO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @pca_isa_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pca_isa_remove(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @i2c_del_adapter(i32* @pca_isa_ops)
  %6 = load i32, i32* @irq, align 4
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* @irq, align 4
  %10 = call i32 @disable_irq(i32 %9)
  %11 = load i32, i32* @irq, align 4
  %12 = call i32 @free_irq(i32 %11, i32* @pca_isa_ops)
  br label %13

13:                                               ; preds = %8, %2
  %14 = load i32, i32* @base, align 4
  %15 = load i32, i32* @IO_SIZE, align 4
  %16 = call i32 @release_region(i32 %14, i32 %15)
  ret i32 0
}

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
