; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp8870.c_configure_reg0xc05.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_sp8870.c_configure_reg0xc05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtv_frontend_properties = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dtv_frontend_properties*, i32*)* @configure_reg0xc05 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_reg0xc05(%struct.dtv_frontend_properties* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.dtv_frontend_properties* %0, %struct.dtv_frontend_properties** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %9 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %21 [
    i32 128, label %11
    i32 131, label %12
    i32 130, label %16
    i32 129, label %20
  ]

11:                                               ; preds = %2
  br label %24

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, 1024
  store i32 %15, i32* %13, align 4
  br label %24

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, 2048
  store i32 %19, i32* %17, align 4
  br label %24

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %82

24:                                               ; preds = %20, %16, %12, %11
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %42 [
    i32 132, label %28
    i32 136, label %29
    i32 135, label %33
    i32 134, label %37
    i32 133, label %41
  ]

28:                                               ; preds = %24
  br label %45

29:                                               ; preds = %24
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, 128
  store i32 %32, i32* %30, align 4
  br label %45

33:                                               ; preds = %24
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, 256
  store i32 %36, i32* %34, align 4
  br label %45

37:                                               ; preds = %24
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, 384
  store i32 %40, i32* %38, align 4
  br label %45

41:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %45

42:                                               ; preds = %24
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %82

45:                                               ; preds = %41, %37, %33, %29, %28
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %67 [
    i32 142, label %49
    i32 141, label %50
    i32 140, label %54
    i32 139, label %58
    i32 138, label %62
    i32 137, label %66
  ]

49:                                               ; preds = %45
  br label %70

50:                                               ; preds = %45
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, 8
  store i32 %53, i32* %51, align 4
  br label %70

54:                                               ; preds = %45
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, 16
  store i32 %57, i32* %55, align 4
  br label %70

58:                                               ; preds = %45
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, 24
  store i32 %61, i32* %59, align 4
  br label %70

62:                                               ; preds = %45
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, 32
  store i32 %65, i32* %63, align 4
  br label %70

66:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %70

67:                                               ; preds = %45
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %82

70:                                               ; preds = %66, %62, %58, %54, %50, %49
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, 4
  store i32 %76, i32* %74, align 4
  br label %81

77:                                               ; preds = %70
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, 2
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %77, %73
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %81, %67, %42, %21
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
