; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_inf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNinfineon.c_inf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.inf_hw = type { %struct.inf_hw**, %struct.TYPE_2__*, %struct.pci_dev*, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"No memory for Infineon ISDN card\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"mISDN: do not have information about adapter at %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"mISDN: found adapter %s at %s\0A\00", align 1
@INF_SCT_1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @inf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inf_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inf_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inf_hw*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.inf_hw* @kzalloc(i32 32, i32 %12)
  store %struct.inf_hw* %13, %struct.inf_hw** %7, align 8
  %14 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %15 = icmp ne %struct.inf_hw* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %150

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %22 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %21, i32 0, i32 2
  store %struct.pci_dev* %20, %struct.pci_dev** %22, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_enable_device(%struct.pci_dev* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %29 = call i32 @kfree(%struct.inf_hw* %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %150

31:                                               ; preds = %19
  %32 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %33 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call %struct.TYPE_2__* @get_card_info(i64 %34)
  %36 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %37 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %36, i32 0, i32 1
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %37, align 8
  %38 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %39 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp ne %struct.TYPE_2__* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %31
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = call i32 @pci_name(%struct.pci_dev* %43)
  %45 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %47 = call i32 @kfree(%struct.inf_hw* %46)
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = call i32 @pci_disable_device(%struct.pci_dev* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %150

52:                                               ; preds = %31
  %53 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %54 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %59 = call i32 @pci_name(%struct.pci_dev* %58)
  %60 = call i32 @pr_notice(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %52
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %66 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %68 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %69 = call i32 @pci_set_drvdata(%struct.pci_dev* %67, %struct.inf_hw* %68)
  %70 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %71 = call i32 @setup_instance(%struct.inf_hw* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %61
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = call i32 @pci_disable_device(%struct.pci_dev* %75)
  %77 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %78 = call i32 @kfree(%struct.inf_hw* %77)
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = call i32 @pci_set_drvdata(%struct.pci_dev* %79, %struct.inf_hw* null)
  br label %148

81:                                               ; preds = %61
  %82 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %83 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @INF_SCT_1, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %147

87:                                               ; preds = %81
  store i32 1, i32* %8, align 4
  br label %88

88:                                               ; preds = %143, %87
  %89 = load i32, i32* %8, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %146

91:                                               ; preds = %88
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call %struct.inf_hw* @kzalloc(i32 32, i32 %92)
  store %struct.inf_hw* %93, %struct.inf_hw** %9, align 8
  %94 = load %struct.inf_hw*, %struct.inf_hw** %9, align 8
  %95 = icmp ne %struct.inf_hw* %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %98 = call i32 @release_card(%struct.inf_hw* %97)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %100 = call i32 @pci_disable_device(%struct.pci_dev* %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %150

103:                                              ; preds = %91
  %104 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %105 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.inf_hw*, %struct.inf_hw** %9, align 8
  %108 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %110 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %109, i32 0, i32 2
  %111 = load %struct.pci_dev*, %struct.pci_dev** %110, align 8
  %112 = load %struct.inf_hw*, %struct.inf_hw** %9, align 8
  %113 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %112, i32 0, i32 2
  store %struct.pci_dev* %111, %struct.pci_dev** %113, align 8
  %114 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %115 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = load %struct.inf_hw*, %struct.inf_hw** %9, align 8
  %121 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %120, i32 0, i32 1
  store %struct.TYPE_2__* %119, %struct.TYPE_2__** %121, align 8
  %122 = load %struct.inf_hw*, %struct.inf_hw** %9, align 8
  %123 = call i32 @setup_instance(%struct.inf_hw* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %103
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = call i32 @pci_disable_device(%struct.pci_dev* %127)
  %129 = load %struct.inf_hw*, %struct.inf_hw** %9, align 8
  %130 = call i32 @kfree(%struct.inf_hw* %129)
  %131 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %132 = call i32 @release_card(%struct.inf_hw* %131)
  br label %146

133:                                              ; preds = %103
  %134 = load %struct.inf_hw*, %struct.inf_hw** %9, align 8
  %135 = load %struct.inf_hw*, %struct.inf_hw** %7, align 8
  %136 = getelementptr inbounds %struct.inf_hw, %struct.inf_hw* %135, i32 0, i32 0
  %137 = load %struct.inf_hw**, %struct.inf_hw*** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.inf_hw*, %struct.inf_hw** %137, i64 %140
  store %struct.inf_hw* %134, %struct.inf_hw** %141, align 8
  br label %142

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %88

146:                                              ; preds = %126, %88
  br label %147

147:                                              ; preds = %146, %81
  br label %148

148:                                              ; preds = %147, %74
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %96, %42, %27, %16
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.inf_hw* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.inf_hw*) #1

declare dso_local %struct.TYPE_2__* @get_card_info(i64) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @pr_notice(i8*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.inf_hw*) #1

declare dso_local i32 @setup_instance(%struct.inf_hw*) #1

declare dso_local i32 @release_card(%struct.inf_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
