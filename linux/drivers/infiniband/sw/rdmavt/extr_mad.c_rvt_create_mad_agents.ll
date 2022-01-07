; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mad.c_rvt_create_mad_agents.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_mad.c_rvt_create_mad_agents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { %struct.TYPE_4__, %struct.rvt_ibport**, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 (%struct.rvt_dev_info.0*, i32)*, i32 (%struct.rvt_dev_info.1*, i32)* }
%struct.rvt_dev_info.0 = type opaque
%struct.rvt_dev_info.1 = type opaque
%struct.rvt_ibport = type { %struct.ib_mad_agent* }
%struct.ib_mad_agent = type { i32 }
%struct.TYPE_3__ = type { i32 }

@IB_QPT_SMI = common dso_local global i32 0, align 4
@rvt_send_mad_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_create_mad_agents(%struct.rvt_dev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvt_dev_info*, align 8
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca %struct.rvt_ibport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %3, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %55, %1
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %11 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %8
  %16 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %17 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %16, i32 0, i32 1
  %18 = load %struct.rvt_ibport**, %struct.rvt_ibport*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rvt_ibport*, %struct.rvt_ibport** %18, i64 %20
  %22 = load %struct.rvt_ibport*, %struct.rvt_ibport** %21, align 8
  store %struct.rvt_ibport* %22, %struct.rvt_ibport** %5, align 8
  %23 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %24 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %23, i32 0, i32 3
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @IB_QPT_SMI, align 4
  %28 = load i32, i32* @rvt_send_mad_handler, align 4
  %29 = call %struct.ib_mad_agent* @ib_register_mad_agent(i32* %24, i32 %26, i32 %27, i32* null, i32 0, i32 %28, i32* null, i32* null, i32 0)
  store %struct.ib_mad_agent* %29, %struct.ib_mad_agent** %4, align 8
  %30 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %31 = call i64 @IS_ERR(%struct.ib_mad_agent* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %15
  %34 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %35 = call i32 @PTR_ERR(%struct.ib_mad_agent* %34)
  store i32 %35, i32* %7, align 4
  br label %59

36:                                               ; preds = %15
  %37 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %38 = load %struct.rvt_ibport*, %struct.rvt_ibport** %5, align 8
  %39 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %38, i32 0, i32 0
  store %struct.ib_mad_agent* %37, %struct.ib_mad_agent** %39, align 8
  %40 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %41 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32 (%struct.rvt_dev_info.1*, i32)*, i32 (%struct.rvt_dev_info.1*, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.rvt_dev_info.1*, i32)* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %47 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32 (%struct.rvt_dev_info.1*, i32)*, i32 (%struct.rvt_dev_info.1*, i32)** %48, align 8
  %50 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %51 = bitcast %struct.rvt_dev_info* %50 to %struct.rvt_dev_info.1*
  %52 = load i32, i32* %6, align 4
  %53 = call i32 %49(%struct.rvt_dev_info.1* %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %36
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %8

58:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %108

59:                                               ; preds = %33
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %103, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %63 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %61, %65
  br i1 %66, label %67, label %106

67:                                               ; preds = %60
  %68 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %69 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %68, i32 0, i32 1
  %70 = load %struct.rvt_ibport**, %struct.rvt_ibport*** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.rvt_ibport*, %struct.rvt_ibport** %70, i64 %72
  %74 = load %struct.rvt_ibport*, %struct.rvt_ibport** %73, align 8
  store %struct.rvt_ibport* %74, %struct.rvt_ibport** %5, align 8
  %75 = load %struct.rvt_ibport*, %struct.rvt_ibport** %5, align 8
  %76 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %75, i32 0, i32 0
  %77 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %76, align 8
  %78 = icmp ne %struct.ib_mad_agent* %77, null
  br i1 %78, label %79, label %102

79:                                               ; preds = %67
  %80 = load %struct.rvt_ibport*, %struct.rvt_ibport** %5, align 8
  %81 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %80, i32 0, i32 0
  %82 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %81, align 8
  store %struct.ib_mad_agent* %82, %struct.ib_mad_agent** %4, align 8
  %83 = load %struct.rvt_ibport*, %struct.rvt_ibport** %5, align 8
  %84 = getelementptr inbounds %struct.rvt_ibport, %struct.rvt_ibport* %83, i32 0, i32 0
  store %struct.ib_mad_agent* null, %struct.ib_mad_agent** %84, align 8
  %85 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %86 = call i32 @ib_unregister_mad_agent(%struct.ib_mad_agent* %85)
  %87 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %88 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32 (%struct.rvt_dev_info.0*, i32)*, i32 (%struct.rvt_dev_info.0*, i32)** %89, align 8
  %91 = icmp ne i32 (%struct.rvt_dev_info.0*, i32)* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %79
  %93 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %94 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32 (%struct.rvt_dev_info.0*, i32)*, i32 (%struct.rvt_dev_info.0*, i32)** %95, align 8
  %97 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %98 = bitcast %struct.rvt_dev_info* %97 to %struct.rvt_dev_info.0*
  %99 = load i32, i32* %6, align 4
  %100 = call i32 %96(%struct.rvt_dev_info.0* %98, i32 %99)
  br label %101

101:                                              ; preds = %92, %79
  br label %102

102:                                              ; preds = %101, %67
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %60

106:                                              ; preds = %60
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %58
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.ib_mad_agent* @ib_register_mad_agent(i32*, i32, i32, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_agent*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mad_agent*) #1

declare dso_local i32 @ib_unregister_mad_agent(%struct.ib_mad_agent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
