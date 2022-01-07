; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_mxl5xx_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_mxl5xx_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl_base*, i32 }
%struct.mxl_base = type { i32, i32, i32, i32*, %struct.dvb_frontend, i32, i32, i32, %struct.mxl_base*, i32, i32, i32, i32, i32, %struct.i2c_adapter*, i32*, i8*, i8* }
%struct.i2c_adapter = type { i32 }
%struct.mxl5xx_cfg = type { i32, i32 }
%struct.mxl = type { i32, i32, i32, i32*, %struct.dvb_frontend, i32, i32, i32, %struct.mxl*, i32, i32, i32, i32, i32, %struct.i2c_adapter*, i32*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@mxllist = common dso_local global i32 0, align 4
@mxl_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @mxl5xx_attach(%struct.i2c_adapter* %0, %struct.mxl5xx_cfg* %1, i8* %2, i8* %3, i32 (%struct.dvb_frontend*, i32)** %4) #0 {
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.mxl5xx_cfg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (%struct.dvb_frontend*, i32)**, align 8
  %12 = alloca %struct.mxl*, align 8
  %13 = alloca %struct.mxl_base*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %7, align 8
  store %struct.mxl5xx_cfg* %1, %struct.mxl5xx_cfg** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 (%struct.dvb_frontend*, i32)** %4, i32 (%struct.dvb_frontend*, i32)*** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.mxl_base* @kzalloc(i32 120, i32 %14)
  %16 = bitcast %struct.mxl_base* %15 to %struct.mxl*
  store %struct.mxl* %16, %struct.mxl** %12, align 8
  %17 = load %struct.mxl*, %struct.mxl** %12, align 8
  %18 = icmp ne %struct.mxl* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %6, align 8
  br label %144

20:                                               ; preds = %5
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.mxl*, %struct.mxl** %12, align 8
  %23 = getelementptr inbounds %struct.mxl, %struct.mxl* %22, i32 0, i32 17
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.mxl*, %struct.mxl** %12, align 8
  %26 = getelementptr inbounds %struct.mxl, %struct.mxl* %25, i32 0, i32 16
  store i8* %24, i8** %26, align 8
  %27 = load %struct.mxl*, %struct.mxl** %12, align 8
  %28 = getelementptr inbounds %struct.mxl, %struct.mxl* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 0
  %31 = load %struct.mxl*, %struct.mxl** %12, align 8
  %32 = getelementptr inbounds %struct.mxl, %struct.mxl* %31, i32 0, i32 15
  store i32* %30, i32** %32, align 8
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %34 = load %struct.mxl5xx_cfg*, %struct.mxl5xx_cfg** %8, align 8
  %35 = getelementptr inbounds %struct.mxl5xx_cfg, %struct.mxl5xx_cfg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.mxl_base* @match_base(%struct.i2c_adapter* %33, i32 %36)
  store %struct.mxl_base* %37, %struct.mxl_base** %13, align 8
  %38 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %39 = icmp ne %struct.mxl_base* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %20
  %41 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %42 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %46 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %49 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %140

53:                                               ; preds = %40
  %54 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %55 = bitcast %struct.mxl_base* %54 to %struct.mxl*
  %56 = load %struct.mxl*, %struct.mxl** %12, align 8
  %57 = getelementptr inbounds %struct.mxl, %struct.mxl* %56, i32 0, i32 8
  store %struct.mxl* %55, %struct.mxl** %57, align 8
  br label %108

58:                                               ; preds = %20
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.mxl_base* @kzalloc(i32 120, i32 %59)
  store %struct.mxl_base* %60, %struct.mxl_base** %13, align 8
  %61 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %62 = icmp ne %struct.mxl_base* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %140

64:                                               ; preds = %58
  %65 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %66 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %67 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %66, i32 0, i32 14
  store %struct.i2c_adapter* %65, %struct.i2c_adapter** %67, align 8
  %68 = load %struct.mxl5xx_cfg*, %struct.mxl5xx_cfg** %8, align 8
  %69 = getelementptr inbounds %struct.mxl5xx_cfg, %struct.mxl5xx_cfg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %72 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %71, i32 0, i32 13
  store i32 %70, i32* %72, align 8
  %73 = load %struct.mxl5xx_cfg*, %struct.mxl5xx_cfg** %8, align 8
  %74 = getelementptr inbounds %struct.mxl5xx_cfg, %struct.mxl5xx_cfg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %77 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 4
  %78 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %79 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %81 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %80, i32 0, i32 11
  %82 = call i32 @mutex_init(i32* %81)
  %83 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %84 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %83, i32 0, i32 10
  %85 = call i32 @mutex_init(i32* %84)
  %86 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %87 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %86, i32 0, i32 9
  %88 = call i32 @mutex_init(i32* %87)
  %89 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %90 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %89, i32 0, i32 5
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  %92 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %93 = bitcast %struct.mxl_base* %92 to %struct.mxl*
  %94 = load %struct.mxl*, %struct.mxl** %12, align 8
  %95 = getelementptr inbounds %struct.mxl, %struct.mxl* %94, i32 0, i32 8
  store %struct.mxl* %93, %struct.mxl** %95, align 8
  %96 = load %struct.mxl*, %struct.mxl** %12, align 8
  %97 = bitcast %struct.mxl* %96 to %struct.mxl_base*
  %98 = load %struct.mxl5xx_cfg*, %struct.mxl5xx_cfg** %8, align 8
  %99 = call i64 @probe(%struct.mxl_base* %97, %struct.mxl5xx_cfg* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %64
  %102 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %103 = call i32 @kfree(%struct.mxl_base* %102)
  br label %140

104:                                              ; preds = %64
  %105 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %106 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %105, i32 0, i32 7
  %107 = call i32 @list_add(i32* %106, i32* @mxllist)
  br label %108

108:                                              ; preds = %104, %53
  %109 = load i32, i32* @mxl_ops, align 4
  %110 = load %struct.mxl*, %struct.mxl** %12, align 8
  %111 = getelementptr inbounds %struct.mxl, %struct.mxl* %110, i32 0, i32 4
  %112 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 8
  %113 = load %struct.mxl*, %struct.mxl** %12, align 8
  %114 = getelementptr inbounds %struct.mxl, %struct.mxl* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 4, i32* %116, align 4
  %117 = load i8*, i8** %9, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.mxl*, %struct.mxl** %12, align 8
  %120 = getelementptr inbounds %struct.mxl, %struct.mxl* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  store i32 %118, i32* %122, align 4
  %123 = load %struct.mxl*, %struct.mxl** %12, align 8
  %124 = getelementptr inbounds %struct.mxl, %struct.mxl* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 2
  store i32 8, i32* %126, align 4
  %127 = load %struct.mxl*, %struct.mxl** %12, align 8
  %128 = bitcast %struct.mxl* %127 to %struct.mxl_base*
  %129 = load %struct.mxl*, %struct.mxl** %12, align 8
  %130 = getelementptr inbounds %struct.mxl, %struct.mxl* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %130, i32 0, i32 0
  store %struct.mxl_base* %128, %struct.mxl_base** %131, align 8
  %132 = load i32 (%struct.dvb_frontend*, i32)**, i32 (%struct.dvb_frontend*, i32)*** %11, align 8
  store i32 (%struct.dvb_frontend*, i32)* @set_input, i32 (%struct.dvb_frontend*, i32)** %132, align 8
  %133 = load %struct.mxl*, %struct.mxl** %12, align 8
  %134 = getelementptr inbounds %struct.mxl, %struct.mxl* %133, i32 0, i32 6
  %135 = load %struct.mxl_base*, %struct.mxl_base** %13, align 8
  %136 = getelementptr inbounds %struct.mxl_base, %struct.mxl_base* %135, i32 0, i32 5
  %137 = call i32 @list_add(i32* %134, i32* %136)
  %138 = load %struct.mxl*, %struct.mxl** %12, align 8
  %139 = getelementptr inbounds %struct.mxl, %struct.mxl* %138, i32 0, i32 4
  store %struct.dvb_frontend* %139, %struct.dvb_frontend** %6, align 8
  br label %144

140:                                              ; preds = %101, %63, %52
  %141 = load %struct.mxl*, %struct.mxl** %12, align 8
  %142 = bitcast %struct.mxl* %141 to %struct.mxl_base*
  %143 = call i32 @kfree(%struct.mxl_base* %142)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %6, align 8
  br label %144

144:                                              ; preds = %140, %108, %19
  %145 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  ret %struct.dvb_frontend* %145
}

declare dso_local %struct.mxl_base* @kzalloc(i32, i32) #1

declare dso_local %struct.mxl_base* @match_base(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @probe(%struct.mxl_base*, %struct.mxl5xx_cfg*) #1

declare dso_local i32 @kfree(%struct.mxl_base*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @set_input(%struct.dvb_frontend*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
