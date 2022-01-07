; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_fw_iso_resource_manage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_fw_iso_resource_manage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@CSR_CHANNELS_AVAILABLE_HI = common dso_local global i64 0, align 8
@CSR_CHANNELS_AVAILABLE_LO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_iso_resource_manage(%struct.fw_card* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.fw_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = ashr i32 %19, 32
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %17, align 4
  %23 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %24 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %27 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  %31 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %32 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_irq(i32* %32)
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %6
  %37 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %42 = load i64, i64* @CSR_CHANNELS_AVAILABLE_HI, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @manage_channel(%struct.fw_card* %37, i32 %38, i32 %39, i32 %40, i64 %43, i32 %44)
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %36, %6
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %58 = load i64, i64* @CSR_CHANNELS_AVAILABLE_LO, align 8
  %59 = add nsw i64 %57, %58
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @manage_channel(%struct.fw_card* %53, i32 %54, i32 %55, i32 %56, i64 %59, i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 32
  store i32 %66, i32* %17, align 4
  br label %67

67:                                               ; preds = %64, %52
  br label %68

68:                                               ; preds = %67, %49, %46
  %69 = load i32, i32* %17, align 4
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32*, i32** %11, align 8
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %79, %76, %73, %68
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %116

86:                                               ; preds = %81
  %87 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @manage_bandwidth(%struct.fw_card* %87, i32 %88, i32 %89, i32 %91, i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32*, i32** %11, align 8
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %96, %86
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load i32, i32* %16, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load i32, i32* %17, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.fw_card*, %struct.fw_card** %7, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %17, align 4
  %112 = call i32 @deallocate_channel(%struct.fw_card* %108, i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %107, %104
  %114 = load i32, i32* %16, align 4
  %115 = load i32*, i32** %10, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %85, %113, %101, %98
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @manage_channel(%struct.fw_card*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @manage_bandwidth(%struct.fw_card*, i32, i32, i32, i32) #1

declare dso_local i32 @deallocate_channel(%struct.fw_card*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
