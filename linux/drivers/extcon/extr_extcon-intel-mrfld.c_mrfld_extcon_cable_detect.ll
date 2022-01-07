; ModuleID = '/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-mrfld.c_mrfld_extcon_cable_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/extcon/extr_extcon-intel-mrfld.c_mrfld_extcon_cable_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrfld_extcon_data = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@BCOVE_SCHGRIRQ1 = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@BCOVE_CHGRIRQ_USBIDDET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrfld_extcon_data*)* @mrfld_extcon_cable_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrfld_extcon_cable_detect(%struct.mrfld_extcon_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mrfld_extcon_data*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mrfld_extcon_data* %0, %struct.mrfld_extcon_data** %3, align 8
  %8 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %3, align 8
  %9 = getelementptr inbounds %struct.mrfld_extcon_data, %struct.mrfld_extcon_data* %8, i32 0, i32 1
  %10 = load %struct.regmap*, %struct.regmap** %9, align 8
  store %struct.regmap* %10, %struct.regmap** %4, align 8
  %11 = load %struct.regmap*, %struct.regmap** %4, align 8
  %12 = load i32, i32* @BCOVE_SCHGRIRQ1, align 4
  %13 = call i32 @regmap_read(%struct.regmap* %11, i32 %12, i32* %5)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %46

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %3, align 8
  %21 = getelementptr inbounds %struct.mrfld_extcon_data, %struct.mrfld_extcon_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = xor i32 %19, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ENODATA, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %46

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @BCOVE_CHGRIRQ_USBIDDET, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %3, align 8
  %36 = call i32 @mrfld_extcon_role_detect(%struct.mrfld_extcon_data* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %29
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.mrfld_extcon_data*, %struct.mrfld_extcon_data** %3, align 8
  %45 = getelementptr inbounds %struct.mrfld_extcon_data, %struct.mrfld_extcon_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %39, %26, %16
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @mrfld_extcon_role_detect(%struct.mrfld_extcon_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
