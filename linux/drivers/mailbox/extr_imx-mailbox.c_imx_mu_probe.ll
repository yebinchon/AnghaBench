; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_imx-mailbox.c_imx_mu_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_imx-mailbox.c_imx_mu_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.imx_mu_priv = type { i64, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, %struct.imx_mu_con_priv*, i32*, i32*, %struct.device* }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__*, i32*, %struct.device* }
%struct.TYPE_3__ = type { %struct.imx_mu_con_priv* }
%struct.imx_mu_con_priv = type { i32, i32, i32, %struct.TYPE_3__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to enable clock\0A\00", align 1
@IMX_MU_CHANS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"imx_mu_chan[%i-%i]\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"fsl,mu-side-b\00", align 1
@imx_mu_ops = common dso_local global i32 0, align 4
@imx_mu_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_mu_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_mu_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.imx_mu_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.imx_mu_con_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.imx_mu_priv* @devm_kzalloc(%struct.device* %15, i32 96, i32 %16)
  store %struct.imx_mu_priv* %17, %struct.imx_mu_priv** %6, align 8
  %18 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %19 = icmp ne %struct.imx_mu_priv* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %182

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %26 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %25, i32 0, i32 8
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32* @devm_platform_ioremap_resource(%struct.platform_device* %27, i32 0)
  %29 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %30 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %29, i32 0, i32 7
  store i32* %28, i32** %30, align 8
  %31 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %32 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @IS_ERR(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %38 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @PTR_ERR(i32* %39)
  store i32 %40, i32* %2, align 4
  br label %182

41:                                               ; preds = %23
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = call i64 @platform_get_irq(%struct.platform_device* %42, i32 0)
  %44 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %45 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %47 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %52 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %2, align 4
  br label %182

55:                                               ; preds = %41
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = call i32* @devm_clk_get(%struct.device* %56, i32* null)
  %58 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %59 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %58, i32 0, i32 6
  store i32* %57, i32** %59, align 8
  %60 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %61 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %60, i32 0, i32 6
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @IS_ERR(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %55
  %66 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %67 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %66, i32 0, i32 6
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @PTR_ERR(i32* %68)
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %75 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %74, i32 0, i32 6
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @PTR_ERR(i32* %76)
  store i32 %77, i32* %2, align 4
  br label %182

78:                                               ; preds = %65
  %79 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %80 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %79, i32 0, i32 6
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %78, %55
  %82 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %83 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @clk_prepare_enable(i32* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %2, align 4
  br label %182

92:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %138, %92
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @IMX_MU_CHANS, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %141

97:                                               ; preds = %93
  %98 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %99 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %98, i32 0, i32 5
  %100 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %100, i64 %102
  store %struct.imx_mu_con_priv* %103, %struct.imx_mu_con_priv** %9, align 8
  %104 = load i32, i32* %7, align 4
  %105 = urem i32 %104, 4
  %106 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %9, align 8
  %107 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %7, align 4
  %109 = lshr i32 %108, 2
  %110 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %9, align 8
  %111 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  %112 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %113 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %112, i32 0, i32 2
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %9, align 8
  %119 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %118, i32 0, i32 3
  store %struct.TYPE_3__* %117, %struct.TYPE_3__** %119, align 8
  %120 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %9, align 8
  %121 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %122 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %121, i32 0, i32 2
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store %struct.imx_mu_con_priv* %120, %struct.imx_mu_con_priv** %127, align 8
  %128 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %9, align 8
  %129 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %9, align 8
  %132 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.imx_mu_con_priv*, %struct.imx_mu_con_priv** %9, align 8
  %135 = getelementptr inbounds %struct.imx_mu_con_priv, %struct.imx_mu_con_priv* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @snprintf(i32 %130, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %97
  %139 = load i32, i32* %7, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %93

141:                                              ; preds = %93
  %142 = load %struct.device_node*, %struct.device_node** %5, align 8
  %143 = call i32 @of_property_read_bool(%struct.device_node* %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %144 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %145 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 4
  %146 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %147 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %146, i32 0, i32 3
  %148 = call i32 @spin_lock_init(i32* %147)
  %149 = load %struct.device*, %struct.device** %4, align 8
  %150 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %151 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 5
  store %struct.device* %149, %struct.device** %152, align 8
  %153 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %154 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 4
  store i32* @imx_mu_ops, i32** %155, align 8
  %156 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %157 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %156, i32 0, i32 2
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %160 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  store %struct.TYPE_3__* %158, %struct.TYPE_3__** %161, align 8
  %162 = load i32, i32* @IMX_MU_CHANS, align 4
  %163 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %164 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  %166 = load i32, i32* @imx_mu_xlate, align 4
  %167 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %168 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 2
  store i32 %166, i32* %169, align 8
  %170 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %171 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  store i32 1, i32* %172, align 4
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %175 = call i32 @platform_set_drvdata(%struct.platform_device* %173, %struct.imx_mu_priv* %174)
  %176 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %177 = call i32 @imx_mu_init_generic(%struct.imx_mu_priv* %176)
  %178 = load %struct.device*, %struct.device** %4, align 8
  %179 = load %struct.imx_mu_priv*, %struct.imx_mu_priv** %6, align 8
  %180 = getelementptr inbounds %struct.imx_mu_priv, %struct.imx_mu_priv* %179, i32 0, i32 1
  %181 = call i32 @devm_mbox_controller_register(%struct.device* %178, %struct.TYPE_4__* %180)
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %141, %88, %73, %50, %36, %20
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.imx_mu_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx_mu_priv*) #1

declare dso_local i32 @imx_mu_init_generic(%struct.imx_mu_priv*) #1

declare dso_local i32 @devm_mbox_controller_register(%struct.device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
