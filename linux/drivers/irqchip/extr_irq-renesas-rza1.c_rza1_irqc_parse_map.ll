; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-rza1.c_rza1_irqc_parse_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-renesas-rza1.c_rza1_irqc_parse_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rza1_irqc_priv = type { %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"interrupt-map\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQC_NUM_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rza1_irqc_priv*, %struct.device_node*)* @rza1_irqc_parse_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza1_irqc_parse_map(%struct.rza1_irqc_priv* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rza1_irqc_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.rza1_irqc_priv* %0, %struct.rza1_irqc_priv** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %14 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %4, align 8
  %15 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = load %struct.device*, %struct.device** %10, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @of_get_property(i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %6)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %117

26:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %113, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @IRQC_NUM_IRQ, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %116

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = icmp ult i32 %32, 3
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %117

37:                                               ; preds = %31
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @be32_to_cpup(i32* %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %117

45:                                               ; preds = %37
  %46 = load i32*, i32** %12, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = call i32 @be32_to_cpup(i32* %47)
  %49 = call %struct.device_node* @of_find_node_by_phandle(i32 %48)
  store %struct.device_node* %49, %struct.device_node** %11, align 8
  %50 = load %struct.device_node*, %struct.device_node** %11, align 8
  %51 = load %struct.device_node*, %struct.device_node** %5, align 8
  %52 = icmp ne %struct.device_node* %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.device_node*, %struct.device_node** %11, align 8
  %55 = call i32 @of_node_put(%struct.device_node* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %117

58:                                               ; preds = %45
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32* %60, i32** %12, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sub i32 %61, 3
  store i32 %62, i32* %6, align 4
  %63 = load %struct.device_node*, %struct.device_node** %11, align 8
  %64 = call i32 @of_property_read_u32(%struct.device_node* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %13)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.device_node*, %struct.device_node** %11, align 8
  %66 = call i32 @of_node_put(%struct.device_node* %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %117

71:                                               ; preds = %58
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %117

78:                                               ; preds = %71
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %4, align 8
  %81 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32 %79, i32* %86, align 8
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %106, %78
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load i32*, i32** %12, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %12, align 8
  %94 = call i32 @be32_to_cpup(i32* %92)
  %95 = load %struct.rza1_irqc_priv*, %struct.rza1_irqc_priv** %4, align 8
  %96 = getelementptr inbounds %struct.rza1_irqc_priv, %struct.rza1_irqc_priv* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %94, i32* %105, align 4
  br label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %8, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %87

109:                                              ; preds = %87
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %6, align 4
  %112 = sub i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %109
  %114 = load i32, i32* %7, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %27

116:                                              ; preds = %27
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %75, %69, %53, %42, %34, %23
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32* @of_get_property(i32, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
