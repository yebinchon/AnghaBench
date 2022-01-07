; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt1050.c_qt1050_apply_fw_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_qt1050.c_qt1050_apply_fw_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qt1050_priv = type { %struct.qt1050_key*, %struct.regmap* }
%struct.qt1050_key = type { i64, i32, i32, i32, i32, i32 }
%struct.regmap = type { i32 }
%struct.qt1050_key_regs = type { i32, i32, i32 }

@QT1050_MAX_KEYS = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qt1050_priv*)* @qt1050_apply_fw_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt1050_apply_fw_data(%struct.qt1050_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qt1050_priv*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.qt1050_key*, align 8
  %6 = alloca %struct.qt1050_key_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qt1050_priv* %0, %struct.qt1050_priv** %3, align 8
  %9 = load %struct.qt1050_priv*, %struct.qt1050_priv** %3, align 8
  %10 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %9, i32 0, i32 1
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %4, align 8
  %12 = load %struct.qt1050_priv*, %struct.qt1050_priv** %3, align 8
  %13 = getelementptr inbounds %struct.qt1050_priv, %struct.qt1050_priv* %12, i32 0, i32 0
  %14 = load %struct.qt1050_key*, %struct.qt1050_key** %13, align 8
  %15 = getelementptr inbounds %struct.qt1050_key, %struct.qt1050_key* %14, i64 0
  store %struct.qt1050_key* %15, %struct.qt1050_key** %5, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %29, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @QT1050_MAX_KEYS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load %struct.regmap*, %struct.regmap** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @qt1050_set_key(%struct.regmap* %21, i32 %22, i32 0)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %109

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  br label %16

32:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %103, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @QT1050_MAX_KEYS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %108

37:                                               ; preds = %33
  %38 = load %struct.qt1050_key*, %struct.qt1050_key** %5, align 8
  %39 = getelementptr inbounds %struct.qt1050_key, %struct.qt1050_key* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @KEY_RESERVED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %103

44:                                               ; preds = %37
  %45 = load %struct.regmap*, %struct.regmap** %4, align 8
  %46 = load %struct.qt1050_key*, %struct.qt1050_key** %5, align 8
  %47 = getelementptr inbounds %struct.qt1050_key, %struct.qt1050_key* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @qt1050_set_key(%struct.regmap* %45, i32 %48, i32 1)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %2, align 4
  br label %109

54:                                               ; preds = %44
  %55 = load %struct.qt1050_key*, %struct.qt1050_key** %5, align 8
  %56 = getelementptr inbounds %struct.qt1050_key, %struct.qt1050_key* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.qt1050_key_regs* @qt1050_get_key_regs(i32 %57)
  store %struct.qt1050_key_regs* %58, %struct.qt1050_key_regs** %6, align 8
  %59 = load %struct.regmap*, %struct.regmap** %4, align 8
  %60 = load %struct.qt1050_key_regs*, %struct.qt1050_key_regs** %6, align 8
  %61 = getelementptr inbounds %struct.qt1050_key_regs, %struct.qt1050_key_regs* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qt1050_key*, %struct.qt1050_key** %5, align 8
  %64 = getelementptr inbounds %struct.qt1050_key, %struct.qt1050_key* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 4
  %67 = load %struct.qt1050_key*, %struct.qt1050_key** %5, align 8
  %68 = getelementptr inbounds %struct.qt1050_key, %struct.qt1050_key* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %66, %69
  %71 = call i32 @regmap_write(%struct.regmap* %59, i32 %62, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %54
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %2, align 4
  br label %109

76:                                               ; preds = %54
  %77 = load %struct.regmap*, %struct.regmap** %4, align 8
  %78 = load %struct.qt1050_key_regs*, %struct.qt1050_key_regs** %6, align 8
  %79 = getelementptr inbounds %struct.qt1050_key_regs, %struct.qt1050_key_regs* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qt1050_key*, %struct.qt1050_key** %5, align 8
  %82 = getelementptr inbounds %struct.qt1050_key, %struct.qt1050_key* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @regmap_write(%struct.regmap* %77, i32 %80, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %2, align 4
  br label %109

89:                                               ; preds = %76
  %90 = load %struct.regmap*, %struct.regmap** %4, align 8
  %91 = load %struct.qt1050_key_regs*, %struct.qt1050_key_regs** %6, align 8
  %92 = getelementptr inbounds %struct.qt1050_key_regs, %struct.qt1050_key_regs* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.qt1050_key*, %struct.qt1050_key** %5, align 8
  %95 = getelementptr inbounds %struct.qt1050_key, %struct.qt1050_key* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @regmap_write(%struct.regmap* %90, i32 %93, i32 %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %89
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %2, align 4
  br label %109

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %43
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  %106 = load %struct.qt1050_key*, %struct.qt1050_key** %5, align 8
  %107 = getelementptr inbounds %struct.qt1050_key, %struct.qt1050_key* %106, i32 1
  store %struct.qt1050_key* %107, %struct.qt1050_key** %5, align 8
  br label %33

108:                                              ; preds = %33
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %100, %87, %74, %52, %26
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @qt1050_set_key(%struct.regmap*, i32, i32) #1

declare dso_local %struct.qt1050_key_regs* @qt1050_get_key_regs(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
