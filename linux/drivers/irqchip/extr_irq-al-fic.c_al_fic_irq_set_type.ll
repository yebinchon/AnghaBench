; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-al-fic.c_al_fic_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-al-fic.c_al_fic_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.irq_chip_generic = type { %struct.al_fic* }
%struct.al_fic = type { i64, i32 }

@IRQ_TYPE_SENSE_MASK = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"fic doesn't support flow type %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AL_FIC_CONFIGURED_LEVEL = common dso_local global i32 0, align 4
@AL_FIC_CONFIGURED_RISING_EDGE = common dso_local global i32 0, align 4
@AL_FIC_UNCONFIGURED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"fic %s state already configured to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @al_fic_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_fic_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_chip_generic*, align 8
  %6 = alloca %struct.al_fic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.irq_data*, %struct.irq_data** %3, align 8
  %10 = call %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data* %9)
  store %struct.irq_chip_generic* %10, %struct.irq_chip_generic** %5, align 8
  %11 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %12 = getelementptr inbounds %struct.irq_chip_generic, %struct.irq_chip_generic* %11, i32 0, i32 0
  %13 = load %struct.al_fic*, %struct.al_fic** %12, align 8
  store %struct.al_fic* %13, %struct.al_fic** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %15 = call i32 @irq_gc_lock(%struct.irq_chip_generic* %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IRQ_TYPE_SENSE_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %72

32:                                               ; preds = %21, %2
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @AL_FIC_CONFIGURED_LEVEL, align 4
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @AL_FIC_CONFIGURED_RISING_EDGE, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %7, align 4
  %43 = load %struct.al_fic*, %struct.al_fic** %6, align 8
  %44 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @AL_FIC_UNCONFIGURED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.al_fic*, %struct.al_fic** %6, align 8
  %50 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @al_fic_set_trigger(%struct.al_fic* %49, %struct.irq_chip_generic* %50, i32 %51)
  br label %71

53:                                               ; preds = %41
  %54 = load %struct.al_fic*, %struct.al_fic** %6, align 8
  %55 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = icmp ne i64 %56, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load %struct.al_fic*, %struct.al_fic** %6, align 8
  %62 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.al_fic*, %struct.al_fic** %6, align 8
  %65 = getelementptr inbounds %struct.al_fic, %struct.al_fic* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %72

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %48
  br label %72

72:                                               ; preds = %71, %60, %27
  %73 = load %struct.irq_chip_generic*, %struct.irq_chip_generic** %5, align 8
  %74 = call i32 @irq_gc_unlock(%struct.irq_chip_generic* %73)
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local %struct.irq_chip_generic* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irq_gc_lock(%struct.irq_chip_generic*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @al_fic_set_trigger(%struct.al_fic*, %struct.irq_chip_generic*, i32) #1

declare dso_local i32 @irq_gc_unlock(%struct.irq_chip_generic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
