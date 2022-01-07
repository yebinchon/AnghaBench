; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { i32, i32, i32, i32 }

@SMBPCISTS = common dso_local global i32 0, align 4
@SMBPCISTS_INTS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@FEATURE_HOST_NOTIFY = common dso_local global i32 0, align 4
@SMBSLVSTS_HST_NTFY_STS = common dso_local global i32 0, align 4
@SMBHSTSTS_BYTE_DONE = common dso_local global i32 0, align 4
@SMBHSTSTS_INTR = common dso_local global i32 0, align 4
@STATUS_ERROR_FLAGS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @i801_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i801_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.i801_priv*
  store %struct.i801_priv* %10, %struct.i801_priv** %6, align 8
  %11 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %12 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SMBPCISTS, align 4
  %15 = call i32 @pci_read_config_word(i32 %13, i32 %14, i32* %7)
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @SMBPCISTS_INTS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %73

22:                                               ; preds = %2
  %23 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %24 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @FEATURE_HOST_NOTIFY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %22
  %30 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %31 = call i32 @SMBSLVSTS(%struct.i801_priv* %30)
  %32 = call i32 @inb_p(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SMBSLVSTS_HST_NTFY_STS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %39 = call i32 @i801_host_notify_isr(%struct.i801_priv* %38)
  store i32 %39, i32* %3, align 4
  br label %73

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %22
  %42 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %43 = call i32 @SMBHSTSTS(%struct.i801_priv* %42)
  %44 = call i32 @inb_p(i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @SMBHSTSTS_BYTE_DONE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %51 = call i32 @i801_isr_byte_done(%struct.i801_priv* %50)
  br label %52

52:                                               ; preds = %49, %41
  %53 = load i32, i32* @SMBHSTSTS_INTR, align 4
  %54 = load i32, i32* @STATUS_ERROR_FLAGS, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %63 = call i32 @SMBHSTSTS(%struct.i801_priv* %62)
  %64 = call i32 @outb_p(i32 %61, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %67 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.i801_priv*, %struct.i801_priv** %6, align 8
  %69 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %68, i32 0, i32 2
  %70 = call i32 @wake_up(i32* %69)
  br label %71

71:                                               ; preds = %60, %52
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %37, %20
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBSLVSTS(%struct.i801_priv*) #1

declare dso_local i32 @i801_host_notify_isr(%struct.i801_priv*) #1

declare dso_local i32 @SMBHSTSTS(%struct.i801_priv*) #1

declare dso_local i32 @i801_isr_byte_done(%struct.i801_priv*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
