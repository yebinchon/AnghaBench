; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_read_dme.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_interface.c_gb_interface_read_dme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_interface = type { i32, i64, i64, i32 }

@DME_DDBL1_MANUFACTURERID = common dso_local global i32 0, align 4
@DME_DDBL1_PRODUCTID = common dso_local global i32 0, align 4
@TOSHIBA_DMID = common dso_local global i64 0, align 8
@TOSHIBA_ES2_BRIDGE_DPID = common dso_local global i64 0, align 8
@GB_INTERFACE_QUIRK_NO_GMP_IDS = common dso_local global i32 0, align 4
@GB_INTERFACE_QUIRK_NO_INIT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_interface*)* @gb_interface_read_dme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_interface_read_dme(%struct.gb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_interface*, align 8
  %4 = alloca i32, align 4
  store %struct.gb_interface* %0, %struct.gb_interface** %3, align 8
  %5 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %6 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

10:                                               ; preds = %1
  %11 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %12 = load i32, i32* @DME_DDBL1_MANUFACTURERID, align 4
  %13 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %14 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %13, i32 0, i32 1
  %15 = call i32 @gb_interface_dme_attr_get(%struct.gb_interface* %11, i32 %12, i64* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %63

20:                                               ; preds = %10
  %21 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %22 = load i32, i32* @DME_DDBL1_PRODUCTID, align 4
  %23 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %24 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %23, i32 0, i32 2
  %25 = call i32 @gb_interface_dme_attr_get(%struct.gb_interface* %21, i32 %22, i64* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %63

30:                                               ; preds = %20
  %31 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %32 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TOSHIBA_DMID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %30
  %37 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %38 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TOSHIBA_ES2_BRIDGE_DPID, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load i32, i32* @GB_INTERFACE_QUIRK_NO_GMP_IDS, align 4
  %44 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %45 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @GB_INTERFACE_QUIRK_NO_INIT_STATUS, align 4
  %49 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %50 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %42, %36, %30
  %54 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %55 = call i32 @gb_interface_read_ara_dme(%struct.gb_interface* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %63

60:                                               ; preds = %53
  %61 = load %struct.gb_interface*, %struct.gb_interface** %3, align 8
  %62 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %58, %28, %18, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @gb_interface_dme_attr_get(%struct.gb_interface*, i32, i64*) #1

declare dso_local i32 @gb_interface_read_ara_dme(%struct.gb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
