; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_adt7475_read_hystersis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_adt7475_read_hystersis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adt7475_data = type { i8*** }

@REG_REMOTE1_HYSTERSIS = common dso_local global i32 0, align 4
@HYSTERSIS = common dso_local global i64 0, align 8
@REG_REMOTE2_HYSTERSIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @adt7475_read_hystersis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adt7475_read_hystersis(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.adt7475_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.adt7475_data* %5, %struct.adt7475_data** %3, align 8
  %6 = load i32, i32* @REG_REMOTE1_HYSTERSIS, align 4
  %7 = call i64 @adt7475_read(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  %9 = load %struct.adt7475_data*, %struct.adt7475_data** %3, align 8
  %10 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %9, i32 0, i32 0
  %11 = load i8***, i8**** %10, align 8
  %12 = load i64, i64* @HYSTERSIS, align 8
  %13 = getelementptr inbounds i8**, i8*** %11, i64 %12
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %8, i8** %15, align 8
  %16 = load %struct.adt7475_data*, %struct.adt7475_data** %3, align 8
  %17 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %16, i32 0, i32 0
  %18 = load i8***, i8**** %17, align 8
  %19 = load i64, i64* @HYSTERSIS, align 8
  %20 = getelementptr inbounds i8**, i8*** %18, i64 %19
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.adt7475_data*, %struct.adt7475_data** %3, align 8
  %25 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %24, i32 0, i32 0
  %26 = load i8***, i8**** %25, align 8
  %27 = load i64, i64* @HYSTERSIS, align 8
  %28 = getelementptr inbounds i8**, i8*** %26, i64 %27
  %29 = load i8**, i8*** %28, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  store i8* %23, i8** %30, align 8
  %31 = load i32, i32* @REG_REMOTE2_HYSTERSIS, align 4
  %32 = call i64 @adt7475_read(i32 %31)
  %33 = inttoptr i64 %32 to i8*
  %34 = load %struct.adt7475_data*, %struct.adt7475_data** %3, align 8
  %35 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %34, i32 0, i32 0
  %36 = load i8***, i8**** %35, align 8
  %37 = load i64, i64* @HYSTERSIS, align 8
  %38 = getelementptr inbounds i8**, i8*** %36, i64 %37
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  store i8* %33, i8** %40, align 8
  ret void
}

declare dso_local %struct.adt7475_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @adt7475_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
