; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_adap_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-piix4.c_piix4_adap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i64 }
%struct.i2c_piix4_adapdata = type { i32, i64 }

@piix4_port_shift_sb800 = common dso_local global i32 0, align 4
@SMBIOSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @piix4_adap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @piix4_adap_remove(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.i2c_piix4_adapdata*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %5 = bitcast %struct.i2c_adapter* %4 to %struct.i2c_piix4_adapdata*
  %6 = call %struct.i2c_piix4_adapdata* @i2c_get_adapdata(%struct.i2c_piix4_adapdata* %5)
  store %struct.i2c_piix4_adapdata* %6, %struct.i2c_piix4_adapdata** %3, align 8
  %7 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %3, align 8
  %8 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %13 = bitcast %struct.i2c_adapter* %12 to %struct.i2c_piix4_adapdata*
  %14 = call i32 @i2c_del_adapter(%struct.i2c_piix4_adapdata* %13)
  %15 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @piix4_port_shift_sb800, align 4
  %19 = shl i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %11
  %22 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %3, align 8
  %23 = getelementptr inbounds %struct.i2c_piix4_adapdata, %struct.i2c_piix4_adapdata* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @SMBIOSIZE, align 4
  %26 = call i32 @release_region(i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %11
  %28 = load %struct.i2c_piix4_adapdata*, %struct.i2c_piix4_adapdata** %3, align 8
  %29 = call i32 @kfree(%struct.i2c_piix4_adapdata* %28)
  %30 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %31 = bitcast %struct.i2c_adapter* %30 to %struct.i2c_piix4_adapdata*
  %32 = call i32 @kfree(%struct.i2c_piix4_adapdata* %31)
  br label %33

33:                                               ; preds = %27, %1
  ret void
}

declare dso_local %struct.i2c_piix4_adapdata* @i2c_get_adapdata(%struct.i2c_piix4_adapdata*) #1

declare dso_local i32 @i2c_del_adapter(%struct.i2c_piix4_adapdata*) #1

declare dso_local i32 @release_region(i64, i32) #1

declare dso_local i32 @kfree(%struct.i2c_piix4_adapdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
