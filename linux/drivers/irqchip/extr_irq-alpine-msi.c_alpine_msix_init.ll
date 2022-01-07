; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-alpine-msi.c_alpine_msix_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-alpine-msi.c_alpine_msix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.alpine_msix_data = type { i32, %struct.alpine_msix_data*, i32, i32, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to allocate resource\0A\00", align 1
@ALPINE_MSIX_SPI_TARGET_CLUSTER0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"al,msi-base-spi\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to parse MSI base\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"al,msi-num-spis\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to parse MSI numbers\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Registering %d msixs, starting at %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.device_node*)* @alpine_msix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpine_msix_init(%struct.device_node* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.alpine_msix_data*, align 8
  %7 = alloca %struct.resource, align 4
  %8 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.alpine_msix_data* @kzalloc(i32 32, i32 %9)
  store %struct.alpine_msix_data* %10, %struct.alpine_msix_data** %6, align 8
  %11 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %12 = icmp ne %struct.alpine_msix_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %97

16:                                               ; preds = %2
  %17 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %18 = getelementptr inbounds %struct.alpine_msix_data, %struct.alpine_msix_data* %17, i32 0, i32 4
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.device_node*, %struct.device_node** %4, align 8
  %21 = call i32 @of_address_to_resource(%struct.device_node* %20, i32 0, %struct.resource* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %93

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @GENMASK_ULL(i32 63, i32 20)
  %30 = and i32 %28, %29
  %31 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %32 = getelementptr inbounds %struct.alpine_msix_data, %struct.alpine_msix_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @ALPINE_MSIX_SPI_TARGET_CLUSTER0, align 4
  %34 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %35 = getelementptr inbounds %struct.alpine_msix_data, %struct.alpine_msix_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %40 = getelementptr inbounds %struct.alpine_msix_data, %struct.alpine_msix_data* %39, i32 0, i32 2
  %41 = call i64 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %93

47:                                               ; preds = %26
  %48 = load %struct.device_node*, %struct.device_node** %4, align 8
  %49 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %50 = getelementptr inbounds %struct.alpine_msix_data, %struct.alpine_msix_data* %49, i32 0, i32 3
  %51 = call i64 @of_property_read_u32(%struct.device_node* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %93

57:                                               ; preds = %47
  %58 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %59 = getelementptr inbounds %struct.alpine_msix_data, %struct.alpine_msix_data* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @BITS_TO_LONGS(i32 %60)
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call %struct.alpine_msix_data* @kcalloc(i32 %61, i32 32, i32 %62)
  %64 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %65 = getelementptr inbounds %struct.alpine_msix_data, %struct.alpine_msix_data* %64, i32 0, i32 1
  store %struct.alpine_msix_data* %63, %struct.alpine_msix_data** %65, align 8
  %66 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %67 = getelementptr inbounds %struct.alpine_msix_data, %struct.alpine_msix_data* %66, i32 0, i32 1
  %68 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %67, align 8
  %69 = icmp ne %struct.alpine_msix_data* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %57
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %93

73:                                               ; preds = %57
  %74 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %75 = getelementptr inbounds %struct.alpine_msix_data, %struct.alpine_msix_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %78 = getelementptr inbounds %struct.alpine_msix_data, %struct.alpine_msix_data* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %76, i32 %79)
  %81 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %82 = load %struct.device_node*, %struct.device_node** %4, align 8
  %83 = call i32 @alpine_msix_init_domains(%struct.alpine_msix_data* %81, %struct.device_node* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %88

87:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %97

88:                                               ; preds = %86
  %89 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %90 = getelementptr inbounds %struct.alpine_msix_data, %struct.alpine_msix_data* %89, i32 0, i32 1
  %91 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %90, align 8
  %92 = call i32 @kfree(%struct.alpine_msix_data* %91)
  br label %93

93:                                               ; preds = %88, %70, %53, %43, %24
  %94 = load %struct.alpine_msix_data*, %struct.alpine_msix_data** %6, align 8
  %95 = call i32 @kfree(%struct.alpine_msix_data* %94)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %87, %13
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.alpine_msix_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.alpine_msix_data* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @alpine_msix_init_domains(%struct.alpine_msix_data*, %struct.device_node*) #1

declare dso_local i32 @kfree(%struct.alpine_msix_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
