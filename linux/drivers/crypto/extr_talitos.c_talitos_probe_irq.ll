; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_probe_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_probe_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.talitos_private = type { i8** }

@.str = private unnamed_addr constant [19 x i8] c"failed to map irq\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@talitos1_interrupt_4ch = common dso_local global i32 0, align 4
@talitos2_interrupt_4ch = common dso_local global i32 0, align 4
@talitos2_interrupt_ch0_2 = common dso_local global i32 0, align 4
@talitos2_interrupt_ch1_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to request secondary irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to request primary irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @talitos_probe_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talitos_probe_irq(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.talitos_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %15)
  store %struct.talitos_private* %16, %struct.talitos_private** %6, align 8
  %17 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %18 = call i32 @has_ftr_sec1(%struct.talitos_private* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i8* @irq_of_parse_and_map(%struct.device_node* %19, i32 0)
  %21 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %22 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %21, i32 0, i32 0
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  store i8* %20, i8** %24, align 8
  %25 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %26 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %25, i32 0, i32 0
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %134

36:                                               ; preds = %1
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %41 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %40, i32 0, i32 0
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @talitos1_interrupt_4ch, align 4
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @dev_driver_string(%struct.device* %46)
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 @request_irq(i8* %44, i32 %45, i32 0, i32 %47, %struct.device* %48)
  store i32 %49, i32* %7, align 4
  br label %116

50:                                               ; preds = %36
  %51 = load %struct.device_node*, %struct.device_node** %5, align 8
  %52 = call i8* @irq_of_parse_and_map(%struct.device_node* %51, i32 1)
  %53 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %54 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  store i8* %52, i8** %56, align 8
  %57 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %58 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %50
  %64 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %65 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @talitos2_interrupt_4ch, align 4
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = call i32 @dev_driver_string(%struct.device* %70)
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = call i32 @request_irq(i8* %68, i32 %69, i32 0, i32 %71, %struct.device* %72)
  store i32 %73, i32* %7, align 4
  br label %116

74:                                               ; preds = %50
  %75 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %76 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %75, i32 0, i32 0
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @talitos2_interrupt_ch0_2, align 4
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = call i32 @dev_driver_string(%struct.device* %81)
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @request_irq(i8* %79, i32 %80, i32 0, i32 %82, %struct.device* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %74
  br label %116

88:                                               ; preds = %74
  %89 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %90 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i32, i32* @talitos2_interrupt_ch1_3, align 4
  %95 = load %struct.device*, %struct.device** %4, align 8
  %96 = call i32 @dev_driver_string(%struct.device* %95)
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call i32 @request_irq(i8* %93, i32 %94, i32 0, i32 %96, %struct.device* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %88
  %102 = load %struct.device*, %struct.device** %4, align 8
  %103 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %104 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %105 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @irq_dispose_mapping(i8* %108)
  %110 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %111 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %110, i32 0, i32 0
  %112 = load i8**, i8*** %111, align 8
  %113 = getelementptr inbounds i8*, i8** %112, i64 1
  store i8* null, i8** %113, align 8
  br label %114

114:                                              ; preds = %101, %88
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  br label %134

116:                                              ; preds = %87, %63, %39
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %122 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %123 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %122, i32 0, i32 0
  %124 = load i8**, i8*** %123, align 8
  %125 = getelementptr inbounds i8*, i8** %124, i64 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @irq_dispose_mapping(i8* %126)
  %128 = load %struct.talitos_private*, %struct.talitos_private** %6, align 8
  %129 = getelementptr inbounds %struct.talitos_private, %struct.talitos_private* %128, i32 0, i32 0
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  store i8* null, i8** %131, align 8
  br label %132

132:                                              ; preds = %119, %116
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %114, %31
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i8* @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @request_irq(i8*, i32, i32, i32, %struct.device*) #1

declare dso_local i32 @dev_driver_string(%struct.device*) #1

declare dso_local i32 @irq_dispose_mapping(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
