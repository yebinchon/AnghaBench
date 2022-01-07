; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_get_i3c_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_get_i3c_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.i3c_master_controller = type { i32 }

@I3C_ADDR_SLOT_FREE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@I3C_ADDR_SLOT_I3C_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_dev_desc*)* @i3c_master_get_i3c_addrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_master_get_i3c_addrs(%struct.i3c_dev_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i3c_dev_desc*, align 8
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca i32, align 4
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %3, align 8
  %6 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %7 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %6)
  store %struct.i3c_master_controller* %7, %struct.i3c_master_controller** %4, align 8
  %8 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %9 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %15 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %111

20:                                               ; preds = %13, %1
  %21 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %22 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %20
  %27 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %28 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %27, i32 0, i32 0
  %29 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %30 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @i3c_bus_get_addr_slot_status(i32* %28, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @I3C_ADDR_SLOT_FREE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %111

40:                                               ; preds = %26
  %41 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %42 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %41, i32 0, i32 0
  %43 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %44 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @I3C_ADDR_SLOT_I3C_DEV, align 4
  %48 = call i32 @i3c_bus_set_addr_slot_status(i32* %42, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %20
  %50 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %51 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %49
  %56 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %57 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = icmp ne %struct.TYPE_3__* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %55
  %61 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %62 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %67 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %65, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %60, %55
  %72 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %73 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %72, i32 0, i32 0
  %74 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %75 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @i3c_bus_get_addr_slot_status(i32* %73, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @I3C_ADDR_SLOT_FREE, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %93

83:                                               ; preds = %71
  %84 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %85 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %84, i32 0, i32 0
  %86 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %87 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @I3C_ADDR_SLOT_I3C_DEV, align 4
  %91 = call i32 @i3c_bus_set_addr_slot_status(i32* %85, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %60, %49
  store i32 0, i32* %2, align 4
  br label %111

93:                                               ; preds = %82
  %94 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %95 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %101 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %100, i32 0, i32 0
  %102 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %103 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @I3C_ADDR_SLOT_FREE, align 4
  %107 = call i32 @i3c_bus_set_addr_slot_status(i32* %101, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %99, %93
  %109 = load i32, i32* @EBUSY, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %108, %92, %37, %19
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

declare dso_local i32 @i3c_bus_get_addr_slot_status(i32*, i32) #1

declare dso_local i32 @i3c_bus_set_addr_slot_status(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
