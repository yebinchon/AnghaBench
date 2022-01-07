; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_mad_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_mad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { i32, %struct.ib_mad_agent***, i32 }
%struct.ib_mad_agent = type { i32 }

@IB_LINK_LAYER_INFINIBAND = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i32 0, align 4
@send_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_mad_init(%struct.mlx4_ib_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_ib_dev*, align 8
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %77, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %80

15:                                               ; preds = %9
  %16 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %16, i32 0, i32 2
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @rdma_port_get_link_layer(i32* %17, i32 %19)
  store i32 %20, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %73, %15
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 1
  br i1 %23, label %24, label %76

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @IB_LINK_LAYER_INFINIBAND, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %29, i32 0, i32 2
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @IB_QPT_GSI, align 4
  br label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @IB_QPT_SMI, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = load i32, i32* @send_handler, align 4
  %42 = call %struct.ib_mad_agent* @ib_register_mad_agent(i32* %30, i32 %32, i32 %40, i32* null, i32 0, i32 %41, i32* null, i32* null, i32 0)
  store %struct.ib_mad_agent* %42, %struct.ib_mad_agent** %4, align 8
  %43 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %44 = call i64 @IS_ERR(%struct.ib_mad_agent* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %48 = call i32 @PTR_ERR(%struct.ib_mad_agent* %47)
  store i32 %48, i32* %7, align 4
  br label %81

49:                                               ; preds = %39
  %50 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %51 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %51, i32 0, i32 1
  %53 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %53, i64 %55
  %57 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %57, i64 %59
  store %struct.ib_mad_agent* %50, %struct.ib_mad_agent** %60, align 8
  br label %72

61:                                               ; preds = %24
  %62 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %62, i32 0, i32 1
  %64 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %64, i64 %66
  %68 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %68, i64 %70
  store %struct.ib_mad_agent* null, %struct.ib_mad_agent** %71, align 8
  br label %72

72:                                               ; preds = %61, %49
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %21

76:                                               ; preds = %21
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %9

80:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %128

81:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %123, %81
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %85 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %126

88:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %119, %88
  %90 = load i32, i32* %6, align 4
  %91 = icmp sle i32 %90, 1
  br i1 %91, label %92, label %122

92:                                               ; preds = %89
  %93 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %94 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %93, i32 0, i32 1
  %95 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %95, i64 %97
  %99 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %99, i64 %101
  %103 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %102, align 8
  %104 = icmp ne %struct.ib_mad_agent* %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %92
  %106 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %3, align 8
  %107 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %106, i32 0, i32 1
  %108 = load %struct.ib_mad_agent***, %struct.ib_mad_agent**** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ib_mad_agent**, %struct.ib_mad_agent*** %108, i64 %110
  %112 = load %struct.ib_mad_agent**, %struct.ib_mad_agent*** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.ib_mad_agent*, %struct.ib_mad_agent** %112, i64 %114
  %116 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %115, align 8
  %117 = call i32 @ib_unregister_mad_agent(%struct.ib_mad_agent* %116)
  br label %118

118:                                              ; preds = %105, %92
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %89

122:                                              ; preds = %89
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  br label %82

126:                                              ; preds = %82
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %80
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @rdma_port_get_link_layer(i32*, i32) #1

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
