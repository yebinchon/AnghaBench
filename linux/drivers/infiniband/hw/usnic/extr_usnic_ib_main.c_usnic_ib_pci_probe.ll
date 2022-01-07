; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_main.c_usnic_ib_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_main.c_usnic_ib_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.usnic_ib_dev = type { %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usnic_ib_vf = type { %struct.usnic_ib_dev*, i32, i32, %struct.usnic_ib_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to enable %s with err %d\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to request region for %s with err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Failed to alloc vnic for %s with err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Failed to discover pf of vnic %s with err%ld\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@USNIC_VNIC_RES_TYPE_EOL = common dso_local global i32 0, align 4
@USNIC_VNIC_RES_TYPE_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Registering usnic VF %s into PF %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @usnic_ib_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usnic_ib_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.usnic_ib_dev*, align 8
  %8 = alloca %struct.usnic_ib_vf*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.usnic_ib_vf* @kzalloc(i32 24, i32 %10)
  store %struct.usnic_ib_vf* %11, %struct.usnic_ib_vf** %8, align 8
  %12 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %13 = icmp ne %struct.usnic_ib_vf* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %164

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_enable_device(%struct.pci_dev* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = call i32 @pci_name(%struct.pci_dev* %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @usnic_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %160

27:                                               ; preds = %17
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load i32, i32* @DRV_NAME, align 4
  %30 = call i32 @pci_request_regions(%struct.pci_dev* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pci_name(%struct.pci_dev* %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @usnic_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36)
  br label %157

38:                                               ; preds = %27
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = call i32 @pci_set_master(%struct.pci_dev* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %43 = call i32 @pci_set_drvdata(%struct.pci_dev* %41, %struct.usnic_ib_vf* %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call %struct.usnic_ib_dev* @usnic_vnic_alloc(%struct.pci_dev* %44)
  %46 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %47 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %46, i32 0, i32 0
  store %struct.usnic_ib_dev* %45, %struct.usnic_ib_dev** %47, align 8
  %48 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %49 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %48, i32 0, i32 0
  %50 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %49, align 8
  %51 = call i64 @IS_ERR_OR_NULL(%struct.usnic_ib_dev* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %38
  %54 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %55 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %54, i32 0, i32 0
  %56 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %55, align 8
  %57 = icmp ne %struct.usnic_ib_dev* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %60 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %59, i32 0, i32 0
  %61 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %60, align 8
  %62 = call i32 @PTR_ERR(%struct.usnic_ib_dev* %61)
  br label %66

63:                                               ; preds = %53
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  br label %66

66:                                               ; preds = %63, %58
  %67 = phi i32 [ %62, %58 ], [ %65, %63 ]
  store i32 %67, i32* %6, align 4
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @pci_name(%struct.pci_dev* %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @usnic_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70)
  br label %150

72:                                               ; preds = %38
  %73 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %74 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %73, i32 0, i32 0
  %75 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %74, align 8
  %76 = call %struct.usnic_ib_dev* @usnic_ib_discover_pf(%struct.usnic_ib_dev* %75)
  store %struct.usnic_ib_dev* %76, %struct.usnic_ib_dev** %7, align 8
  %77 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %78 = call i64 @IS_ERR_OR_NULL(%struct.usnic_ib_dev* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %72
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = call i32 @pci_name(%struct.pci_dev* %81)
  %83 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %84 = call i32 @PTR_ERR(%struct.usnic_ib_dev* %83)
  %85 = call i32 @usnic_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %84)
  %86 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %87 = icmp ne %struct.usnic_ib_dev* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %90 = call i32 @PTR_ERR(%struct.usnic_ib_dev* %89)
  br label %94

91:                                               ; preds = %80
  %92 = load i32, i32* @EFAULT, align 4
  %93 = sub nsw i32 0, %92
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i32 [ %90, %88 ], [ %93, %91 ]
  store i32 %95, i32* %6, align 4
  br label %145

96:                                               ; preds = %72
  %97 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %98 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %99 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %98, i32 0, i32 3
  store %struct.usnic_ib_dev* %97, %struct.usnic_ib_dev** %99, align 8
  %100 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %101 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %100, i32 0, i32 2
  %102 = call i32 @spin_lock_init(i32* %101)
  %103 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %104 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %103, i32 0, i32 1
  %105 = call i32 @mutex_lock(i32* %104)
  %106 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %107 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %106, i32 0, i32 1
  %108 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %109 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %108, i32 0, i32 3
  %110 = call i32 @list_add_tail(i32* %107, i32* %109)
  %111 = load i32, i32* @USNIC_VNIC_RES_TYPE_EOL, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %129, %96
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @USNIC_VNIC_RES_TYPE_MAX, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %113
  %118 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %119 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %118, i32 0, i32 0
  %120 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @usnic_vnic_res_cnt(%struct.usnic_ib_dev* %120, i32 %121)
  %123 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %124 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  br label %129

129:                                              ; preds = %117
  %130 = load i32, i32* %9, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %113

132:                                              ; preds = %113
  %133 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %134 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %133, i32 0, i32 1
  %135 = call i32 @mutex_unlock(i32* %134)
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = call i32 @pci_name(%struct.pci_dev* %136)
  %138 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %7, align 8
  %139 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = call i32 @dev_name(i32* %140)
  %142 = call i32 @usnic_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %137, i32 %141)
  %143 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %144 = call i32 @usnic_ib_log_vf(%struct.usnic_ib_vf* %143)
  store i32 0, i32* %3, align 4
  br label %164

145:                                              ; preds = %94
  %146 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %147 = getelementptr inbounds %struct.usnic_ib_vf, %struct.usnic_ib_vf* %146, i32 0, i32 0
  %148 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %147, align 8
  %149 = call i32 @usnic_vnic_free(%struct.usnic_ib_dev* %148)
  br label %150

150:                                              ; preds = %145, %66
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = call i32 @pci_set_drvdata(%struct.pci_dev* %151, %struct.usnic_ib_vf* null)
  %153 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %154 = call i32 @pci_clear_master(%struct.pci_dev* %153)
  %155 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %156 = call i32 @pci_release_regions(%struct.pci_dev* %155)
  br label %157

157:                                              ; preds = %150, %33
  %158 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %159 = call i32 @pci_disable_device(%struct.pci_dev* %158)
  br label %160

160:                                              ; preds = %157, %22
  %161 = load %struct.usnic_ib_vf*, %struct.usnic_ib_vf** %8, align 8
  %162 = call i32 @kfree(%struct.usnic_ib_vf* %161)
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %160, %132, %14
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.usnic_ib_vf* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @usnic_err(i8*, i32, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.usnic_ib_vf*) #1

declare dso_local %struct.usnic_ib_dev* @usnic_vnic_alloc(%struct.pci_dev*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.usnic_ib_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.usnic_ib_dev*) #1

declare dso_local %struct.usnic_ib_dev* @usnic_ib_discover_pf(%struct.usnic_ib_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usnic_vnic_res_cnt(%struct.usnic_ib_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usnic_info(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @usnic_ib_log_vf(%struct.usnic_ib_vf*) #1

declare dso_local i32 @usnic_vnic_free(%struct.usnic_ib_dev*) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.usnic_ib_vf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
