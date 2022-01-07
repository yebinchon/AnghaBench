; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNipac.c_hscx_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hscx_hw = type { i32, i32*, %struct.TYPE_6__*, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32 (i32, i64, i32*, i32)* }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { i32, i32* }

@FLG_TX_EMPTY = common dso_local global i32 0, align 4
@FLG_TRANSPARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: B%1d %d/%d/%d\0A\00", align 1
@IPAC_TYPE_IPACX = common dso_local global i32 0, align 4
@IPACX_XFIFOB = common dso_local global i64 0, align 8
@DEBUG_HW_BFIFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"B%1d-send %s %d \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hscx_hw*)* @hscx_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hscx_fill_fifo(%struct.hscx_hw* %0) #0 {
  %2 = alloca %struct.hscx_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.hscx_hw* %0, %struct.hscx_hw** %2, align 8
  %6 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %7 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @FLG_TX_EMPTY, align 4
  %13 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %14 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %16 = call i64 @test_bit(i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %197

19:                                               ; preds = %11
  %20 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %21 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %23 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %24 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %5, align 8
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %28 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @memset(i32* %26, i32 %32, i32 %33)
  br label %108

35:                                               ; preds = %1
  %36 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %37 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %43 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %41, %45
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %197

50:                                               ; preds = %35
  %51 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %52 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %58 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  store i32* %62, i32** %5, align 8
  %63 = load i32, i32* @FLG_TRANSPARENT, align 4
  %64 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %65 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = call i64 @test_bit(i32 %63, i32* %66)
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %73 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %50
  %77 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %78 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %50
  %81 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %82 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %87 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %92 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %96 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %85, i32 %89, i32 %90, i32 %94, i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %104 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, %102
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %80, %19
  %109 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %110 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %109, i32 0, i32 2
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @IPAC_TYPE_IPACX, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %108
  %118 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %119 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %118, i32 0, i32 2
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %121, align 8
  %123 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %124 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %129 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %128, i32 0, i32 4
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @IPACX_XFIFOB, align 8
  %132 = add nsw i64 %130, %131
  %133 = load i32*, i32** %5, align 8
  %134 = load i32, i32* %3, align 4
  %135 = call i32 %122(i32 %127, i64 %132, i32* %133, i32 %134)
  br label %155

136:                                              ; preds = %108
  %137 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %138 = call i32 @waitforXFW(%struct.hscx_hw* %137)
  %139 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %140 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %139, i32 0, i32 2
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load i32 (i32, i64, i32*, i32)*, i32 (i32, i64, i32*, i32)** %142, align 8
  %144 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %145 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %144, i32 0, i32 2
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %150 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load i32*, i32** %5, align 8
  %153 = load i32, i32* %3, align 4
  %154 = call i32 %143(i32 %148, i64 %151, i32* %152, i32 %153)
  br label %155

155:                                              ; preds = %136, %117
  %156 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 8, i32 10
  %161 = call i32 @hscx_cmdr(%struct.hscx_hw* %156, i32 %160)
  %162 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %163 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = icmp ne %struct.TYPE_4__* %165, null
  br i1 %166, label %167, label %197

167:                                              ; preds = %155
  %168 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %169 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @DEBUG_HW_BFIFO, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %197

175:                                              ; preds = %167
  %176 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %177 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %180 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %184 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %183, i32 0, i32 2
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* %3, align 4
  %189 = call i32 @snprintf(i32* %178, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %182, i8* %187, i32 %188)
  %190 = load %struct.hscx_hw*, %struct.hscx_hw** %2, align 8
  %191 = getelementptr inbounds %struct.hscx_hw, %struct.hscx_hw* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %194 = load i32*, i32** %5, align 8
  %195 = load i32, i32* %3, align 4
  %196 = call i32 @print_hex_dump_bytes(i32* %192, i32 %193, i32* %194, i32 %195)
  br label %197

197:                                              ; preds = %18, %49, %175, %167, %155
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @waitforXFW(%struct.hscx_hw*) #1

declare dso_local i32 @hscx_cmdr(%struct.hscx_hw*, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
