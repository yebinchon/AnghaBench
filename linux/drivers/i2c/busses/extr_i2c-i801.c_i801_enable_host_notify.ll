; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_enable_host_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_enable_host_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i801_priv = type { i32, i32 }

@FEATURE_HOST_NOTIFY = common dso_local global i32 0, align 4
@SMBSLVCMD_HST_NTFY_INTREN = common dso_local global i32 0, align 4
@SMBSLVSTS_HST_NTFY_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @i801_enable_host_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i801_enable_host_notify(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.i801_priv*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %5 = call %struct.i801_priv* @i2c_get_adapdata(%struct.i2c_adapter* %4)
  store %struct.i801_priv* %5, %struct.i801_priv** %3, align 8
  %6 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %7 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FEATURE_HOST_NOTIFY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %34

13:                                               ; preds = %1
  %14 = load i32, i32* @SMBSLVCMD_HST_NTFY_INTREN, align 4
  %15 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %16 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @SMBSLVCMD_HST_NTFY_INTREN, align 4
  %22 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %23 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %21, %24
  %26 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %27 = call i32 @SMBSLVCMD(%struct.i801_priv* %26)
  %28 = call i32 @outb_p(i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %20, %13
  %30 = load i32, i32* @SMBSLVSTS_HST_NTFY_STS, align 4
  %31 = load %struct.i801_priv*, %struct.i801_priv** %3, align 8
  %32 = call i32 @SMBSLVSTS(%struct.i801_priv* %31)
  %33 = call i32 @outb_p(i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %29, %12
  ret void
}

declare dso_local %struct.i801_priv* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @SMBSLVCMD(%struct.i801_priv*) #1

declare dso_local i32 @SMBSLVSTS(%struct.i801_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
