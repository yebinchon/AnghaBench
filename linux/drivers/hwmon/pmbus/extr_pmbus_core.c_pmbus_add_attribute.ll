; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_attribute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_add_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.attribute** }
%struct.attribute = type { i32 }

@PMBUS_ATTR_ALLOC_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmbus_data*, %struct.attribute*)* @pmbus_add_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmbus_add_attribute(%struct.pmbus_data* %0, %struct.attribute* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmbus_data*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.pmbus_data* %0, %struct.pmbus_data** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  %8 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %9 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %12 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp sge i32 %10, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %2
  %17 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %18 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PMBUS_ATTR_ALLOC_SIZE, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %23 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.attribute**, %struct.attribute*** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @krealloc(%struct.attribute** %25, i32 %29, i32 %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %16
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %67

37:                                               ; preds = %16
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to %struct.attribute**
  %40 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %41 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.attribute** %39, %struct.attribute*** %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %45 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %37, %2
  %47 = load %struct.attribute*, %struct.attribute** %5, align 8
  %48 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %49 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.attribute**, %struct.attribute*** %50, align 8
  %52 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %53 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds %struct.attribute*, %struct.attribute** %51, i64 %56
  store %struct.attribute* %47, %struct.attribute** %57, align 8
  %58 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %59 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.attribute**, %struct.attribute*** %60, align 8
  %62 = load %struct.pmbus_data*, %struct.pmbus_data** %4, align 8
  %63 = getelementptr inbounds %struct.pmbus_data, %struct.pmbus_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.attribute*, %struct.attribute** %61, i64 %65
  store %struct.attribute* null, %struct.attribute** %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %46, %34
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i8* @krealloc(%struct.attribute**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
