; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_write_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-des.c_omap_des_write_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_des_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32* }

@FLAGS_CBC = common dso_local global i32 0, align 4
@DES_REG_CTRL_CBC = common dso_local global i32 0, align 4
@FLAGS_ENCRYPT = common dso_local global i32 0, align 4
@DES_REG_CTRL_DIRECTION = common dso_local global i32 0, align 4
@DES_REG_CTRL_TDES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_des_dev*)* @omap_des_write_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_des_write_ctrl(%struct.omap_des_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_des_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_des_dev* %0, %struct.omap_des_dev** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %10 = call i32 @omap_des_hw_init(%struct.omap_des_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %2, align 4
  br label %114

15:                                               ; preds = %1
  %16 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %17 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %44, %15
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %30 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @DES_REG_KEY(%struct.omap_des_dev* %30, i32 %31)
  %33 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %34 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__le32_to_cpu(i32 %41)
  %43 = call i32 @omap_des_write(%struct.omap_des_dev* %29, i32 %32, i32 %42)
  br label %44

44:                                               ; preds = %28
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %24

47:                                               ; preds = %24
  %48 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %49 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @FLAGS_CBC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %56 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %63 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %64 = call i32 @DES_REG_IV(%struct.omap_des_dev* %63, i32 0)
  %65 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %66 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @omap_des_write_n(%struct.omap_des_dev* %62, i32 %64, i64 %69, i32 2)
  br label %71

71:                                               ; preds = %61, %54, %47
  %72 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %73 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FLAGS_CBC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @DES_REG_CTRL_CBC, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %78, %71
  %83 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %84 = getelementptr inbounds %struct.omap_des_dev, %struct.omap_des_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FLAGS_ENCRYPT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32, i32* @DES_REG_CTRL_DIRECTION, align 4
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %89, %82
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 6
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* @DES_REG_CTRL_TDES, align 4
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32, i32* @DES_REG_CTRL_CBC, align 4
  %102 = load i32, i32* @DES_REG_CTRL_DIRECTION, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @DES_REG_CTRL_TDES, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  %108 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %109 = load %struct.omap_des_dev*, %struct.omap_des_dev** %3, align 8
  %110 = call i32 @DES_REG_CTRL(%struct.omap_des_dev* %109)
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @omap_des_write_mask(%struct.omap_des_dev* %108, i32 %110, i32 %111, i32 %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %100, %13
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @omap_des_hw_init(%struct.omap_des_dev*) #1

declare dso_local i32 @omap_des_write(%struct.omap_des_dev*, i32, i32) #1

declare dso_local i32 @DES_REG_KEY(%struct.omap_des_dev*, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @omap_des_write_n(%struct.omap_des_dev*, i32, i64, i32) #1

declare dso_local i32 @DES_REG_IV(%struct.omap_des_dev*, i32) #1

declare dso_local i32 @omap_des_write_mask(%struct.omap_des_dev*, i32, i32, i32) #1

declare dso_local i32 @DES_REG_CTRL(%struct.omap_des_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
