; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_data_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_data_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { i64, i32, i32*, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32*, i32, i32* }
%struct.cs_buffer_config = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"setting slot size to %u, buf size %u, align %u\0A\00", align 1
@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"setting data start at %u, cfg block %u, align %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"DL buf #%u at %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"UL buf #%u at %u\0A\00", align 1
@CS_STATE_CONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_hsi_iface*, %struct.cs_buffer_config*)* @cs_hsi_data_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_data_enable(%struct.cs_hsi_iface* %0, %struct.cs_buffer_config* %1) #0 {
  %3 = alloca %struct.cs_hsi_iface*, align 8
  %4 = alloca %struct.cs_buffer_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %3, align 8
  store %struct.cs_buffer_config* %1, %struct.cs_buffer_config** %4, align 8
  %7 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %8 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %14 = load %struct.cs_buffer_config*, %struct.cs_buffer_config** %4, align 8
  %15 = getelementptr inbounds %struct.cs_buffer_config, %struct.cs_buffer_config* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cs_buffer_config*, %struct.cs_buffer_config** %4, align 8
  %18 = getelementptr inbounds %struct.cs_buffer_config, %struct.cs_buffer_config* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @set_buffer_sizes(%struct.cs_hsi_iface* %13, i32 %16, i32 %19)
  %21 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %22 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i8* @L1_CACHE_ALIGN(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %28 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %30 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %29, i32 0, i32 5
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %34 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %37 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @L1_CACHE_BYTES, align 4
  %41 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39, i32 %40)
  %42 = call i8* @L1_CACHE_ALIGN(i32 32)
  %43 = ptrtoint i8* %42 to i32
  store i32 %43, i32* %5, align 4
  %44 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %45 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %44, i32 0, i32 5
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @L1_CACHE_BYTES, align 4
  %50 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 32, i32 %49)
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %101, %2
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %54 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %53, i32 0, i32 6
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ult i32 %52, %57
  br i1 %58, label %59, label %104

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %63 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = mul i32 %61, %64
  %66 = add i32 %60, %65
  %67 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %68 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %66, i32* %72, align 4
  %73 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %74 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %81 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %80, i32 0, i32 6
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %79, i32* %87, align 4
  %88 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %89 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %88, i32 0, i32 5
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %94 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 %99)
  br label %101

101:                                              ; preds = %59
  %102 = load i32, i32* %6, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %51

104:                                              ; preds = %51
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %161, %104
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %108 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %107, i32 0, i32 6
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = icmp ult i32 %106, %111
  br i1 %112, label %113, label %164

113:                                              ; preds = %105
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %117 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %116, i32 0, i32 6
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = add i32 %115, %120
  %122 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %123 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = mul i32 %121, %124
  %126 = add i32 %114, %125
  %127 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %128 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %126, i32* %132, align 4
  %133 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %134 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %141 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %140, i32 0, i32 6
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %139, i32* %147, align 4
  %148 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %149 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %148, i32 0, i32 5
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load i32, i32* %6, align 4
  %153 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %154 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32*, i8*, i32, i32, ...) @dev_dbg(i32* %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %152, i32 %159)
  br label %161

161:                                              ; preds = %113
  %162 = load i32, i32* %6, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %6, align 4
  br label %105

164:                                              ; preds = %105
  %165 = load i32, i32* @CS_STATE_CONFIGURED, align 4
  %166 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %167 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @set_buffer_sizes(%struct.cs_hsi_iface*, i32, i32) #1

declare dso_local i8* @L1_CACHE_ALIGN(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
