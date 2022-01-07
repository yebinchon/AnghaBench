; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_init_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7511_drv.c_adv7511_init_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv7511 = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { %struct.device }
%struct.device = type { i32 }

@ADV7511 = common dso_local global i64 0, align 8
@adv7511_supply_names = common dso_local global i8** null, align 8
@adv7533_supply_names = common dso_local global i8** null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv7511*)* @adv7511_init_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7511_init_regulators(%struct.adv7511* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv7511*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.adv7511* %0, %struct.adv7511** %3, align 8
  %8 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %9 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %13 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ADV7511, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i8**, i8*** @adv7511_supply_names, align 8
  store i8** %18, i8*** %5, align 8
  %19 = load i8**, i8*** @adv7511_supply_names, align 8
  %20 = call i8* @ARRAY_SIZE(i8** %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %23 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %31

24:                                               ; preds = %1
  %25 = load i8**, i8*** @adv7533_supply_names, align 8
  store i8** %25, i8*** %5, align 8
  %26 = load i8**, i8*** @adv7533_supply_names, align 8
  %27 = call i8* @ARRAY_SIZE(i8** %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %30 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %34 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.TYPE_6__* @devm_kcalloc(%struct.device* %32, i32 %35, i32 8, i32 %36)
  %38 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %39 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %38, i32 0, i32 2
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %39, align 8
  %40 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %41 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %40, i32 0, i32 2
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %91

47:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %51 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %61 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %60, i32 0, i32 2
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i8* %59, i8** %66, align 8
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %48

70:                                               ; preds = %48
  %71 = load %struct.device*, %struct.device** %4, align 8
  %72 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %73 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %76 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = call i32 @devm_regulator_bulk_get(%struct.device* %71, i32 %74, %struct.TYPE_6__* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %91

83:                                               ; preds = %70
  %84 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %85 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.adv7511*, %struct.adv7511** %3, align 8
  %88 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %87, i32 0, i32 2
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = call i32 @regulator_bulk_enable(i32 %86, %struct.TYPE_6__* %89)
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %83, %81, %44
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i8* @ARRAY_SIZE(i8**) #1

declare dso_local %struct.TYPE_6__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @regulator_bulk_enable(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
