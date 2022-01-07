; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_ts_get_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_edt-ft5x06.c_edt_ft5x06_ts_get_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edt_ft5x06_ts_data = type { i64, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.edt_reg_addr }
%struct.edt_reg_addr = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@NO_REGISTER = common dso_local global i64 0, align 8
@EDT_M06 = common dso_local global i64 0, align 8
@EDT_M09 = common dso_local global i64 0, align 8
@EDT_M12 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edt_ft5x06_ts_data*)* @edt_ft5x06_ts_get_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edt_ft5x06_ts_get_parameters(%struct.edt_ft5x06_ts_data* %0) #0 {
  %2 = alloca %struct.edt_ft5x06_ts_data*, align 8
  %3 = alloca %struct.edt_reg_addr*, align 8
  store %struct.edt_ft5x06_ts_data* %0, %struct.edt_ft5x06_ts_data** %2, align 8
  %4 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %5 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %4, i32 0, i32 9
  store %struct.edt_reg_addr* %5, %struct.edt_reg_addr** %3, align 8
  %6 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %7 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %8 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i8* @edt_ft5x06_register_read(%struct.edt_ft5x06_ts_data* %6, i64 %9)
  %11 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %12 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %11, i32 0, i32 8
  store i8* %10, i8** %12, align 8
  %13 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %14 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %15 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @edt_ft5x06_register_read(%struct.edt_ft5x06_ts_data* %13, i64 %16)
  %18 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %19 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %21 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @NO_REGISTER, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %27 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %28 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @edt_ft5x06_register_read(%struct.edt_ft5x06_ts_data* %26, i64 %29)
  %31 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %32 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %31, i32 0, i32 6
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %25, %1
  %34 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %35 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NO_REGISTER, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %41 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %42 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @edt_ft5x06_register_read(%struct.edt_ft5x06_ts_data* %40, i64 %43)
  %45 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %46 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %39, %33
  %48 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %49 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NO_REGISTER, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %55 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %56 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @edt_ft5x06_register_read(%struct.edt_ft5x06_ts_data* %54, i64 %57)
  %59 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %60 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %53, %47
  %62 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %63 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @NO_REGISTER, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %69 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %70 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = call i8* @edt_ft5x06_register_read(%struct.edt_ft5x06_ts_data* %68, i64 %71)
  %73 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %74 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %67, %61
  %76 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %77 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @EDT_M06, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %93, label %81

81:                                               ; preds = %75
  %82 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %83 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @EDT_M09, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %89 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @EDT_M12, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %87, %81, %75
  %94 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %95 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %96 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = call i8* @edt_ft5x06_register_read(%struct.edt_ft5x06_ts_data* %94, i64 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %101 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %103 = load %struct.edt_reg_addr*, %struct.edt_reg_addr** %3, align 8
  %104 = getelementptr inbounds %struct.edt_reg_addr, %struct.edt_reg_addr* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @edt_ft5x06_register_read(%struct.edt_ft5x06_ts_data* %102, i64 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %109 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  br label %115

110:                                              ; preds = %87
  %111 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %112 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %111, i32 0, i32 1
  store i32 -1, i32* %112, align 8
  %113 = load %struct.edt_ft5x06_ts_data*, %struct.edt_ft5x06_ts_data** %2, align 8
  %114 = getelementptr inbounds %struct.edt_ft5x06_ts_data, %struct.edt_ft5x06_ts_data* %113, i32 0, i32 2
  store i32 -1, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %93
  ret void
}

declare dso_local i8* @edt_ft5x06_register_read(%struct.edt_ft5x06_ts_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
