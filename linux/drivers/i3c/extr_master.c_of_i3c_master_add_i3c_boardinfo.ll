; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_of_i3c_master_add_i3c_boardinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_of_i3c_master_add_i3c_boardinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { %struct.TYPE_2__, i32, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.i3c_dev_boardinfo = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I3C_MAX_ADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I3C_ADDR_SLOT_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"assigned-address\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*, %struct.device_node*, i32*)* @of_i3c_master_add_i3c_boardinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_i3c_master_add_i3c_boardinfo(%struct.i3c_master_controller* %0, %struct.device_node* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i3c_master_controller*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i3c_dev_boardinfo*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %5, align 8
  %13 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %12, i32 0, i32 2
  store %struct.device* %13, %struct.device** %9, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.device*, %struct.device** %9, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.i3c_dev_boardinfo* @devm_kzalloc(%struct.device* %14, i32 20, i32 %15)
  store %struct.i3c_dev_boardinfo* %16, %struct.i3c_dev_boardinfo** %8, align 8
  %17 = load %struct.i3c_dev_boardinfo*, %struct.i3c_dev_boardinfo** %8, align 8
  %18 = icmp ne %struct.i3c_dev_boardinfo* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %118

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %22
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I3C_MAX_ADDR, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %118

36:                                               ; preds = %27
  %37 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %5, align 8
  %38 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %37, i32 0, i32 1
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @i3c_bus_get_addr_slot_status(i32* %38, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @I3C_ADDR_SLOT_FREE, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %118

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i3c_dev_boardinfo*, %struct.i3c_dev_boardinfo** %8, align 8
  %55 = getelementptr inbounds %struct.i3c_dev_boardinfo, %struct.i3c_dev_boardinfo* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.device_node*, %struct.device_node** %6, align 8
  %57 = call i32 @of_property_read_u32(%struct.device_node* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %11)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @I3C_MAX_ADDR, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %118

66:                                               ; preds = %59
  %67 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %5, align 8
  %68 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %67, i32 0, i32 1
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @i3c_bus_get_addr_slot_status(i32* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @I3C_ADDR_SLOT_FREE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %118

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %50
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 32
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %82, %85
  %87 = load %struct.i3c_dev_boardinfo*, %struct.i3c_dev_boardinfo** %8, align 8
  %88 = getelementptr inbounds %struct.i3c_dev_boardinfo, %struct.i3c_dev_boardinfo* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.i3c_dev_boardinfo*, %struct.i3c_dev_boardinfo** %8, align 8
  %90 = getelementptr inbounds %struct.i3c_dev_boardinfo, %struct.i3c_dev_boardinfo* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @GENMASK_ULL(i32 63, i32 48)
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %78
  %96 = load %struct.i3c_dev_boardinfo*, %struct.i3c_dev_boardinfo** %8, align 8
  %97 = getelementptr inbounds %struct.i3c_dev_boardinfo, %struct.i3c_dev_boardinfo* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @I3C_PID_RND_LOWER_32BITS(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %95, %78
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %118

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.i3c_dev_boardinfo*, %struct.i3c_dev_boardinfo** %8, align 8
  %107 = getelementptr inbounds %struct.i3c_dev_boardinfo, %struct.i3c_dev_boardinfo* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  %108 = load %struct.device_node*, %struct.device_node** %6, align 8
  %109 = call i32 @of_node_get(%struct.device_node* %108)
  %110 = load %struct.i3c_dev_boardinfo*, %struct.i3c_dev_boardinfo** %8, align 8
  %111 = getelementptr inbounds %struct.i3c_dev_boardinfo, %struct.i3c_dev_boardinfo* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load %struct.i3c_dev_boardinfo*, %struct.i3c_dev_boardinfo** %8, align 8
  %113 = getelementptr inbounds %struct.i3c_dev_boardinfo, %struct.i3c_dev_boardinfo* %112, i32 0, i32 3
  %114 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %5, align 8
  %115 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = call i32 @list_add_tail(i32* %113, i32* %116)
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %104, %101, %74, %63, %46, %33, %19
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.i3c_dev_boardinfo* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @i3c_bus_get_addr_slot_status(i32*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i64 @I3C_PID_RND_LOWER_32BITS(i32) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
