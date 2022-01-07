; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_stv0910_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0910.c_stv0910_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.stv_base* }
%struct.stv_base = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dvb_frontend, i32, %struct.stv_base*, i32, i32, i32, %struct.i2c_adapter*, i32 }
%struct.i2c_adapter = type { i32 }
%struct.stv0910_cfg = type { i32, i32, i32, i32, i32, i64 }
%struct.stv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dvb_frontend, i32, %struct.stv*, i32, i32, i32, %struct.i2c_adapter*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RCVMODE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"No demod found at adr %02X on %s\0A\00", align 1
@stvlist = common dso_local global i32 0, align 4
@stv0910_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s demod found at adr %02X on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dvb_frontend* @stv0910_attach(%struct.i2c_adapter* %0, %struct.stv0910_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.stv0910_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stv*, align 8
  %9 = alloca %struct.stv_base*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.stv0910_cfg* %1, %struct.stv0910_cfg** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.stv_base* @kzalloc(i32 112, i32 %10)
  %12 = bitcast %struct.stv_base* %11 to %struct.stv*
  store %struct.stv* %12, %struct.stv** %8, align 8
  %13 = load %struct.stv*, %struct.stv** %8, align 8
  %14 = icmp ne %struct.stv* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %196

16:                                               ; preds = %3
  %17 = load %struct.stv0910_cfg*, %struct.stv0910_cfg** %6, align 8
  %18 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 64
  %23 = or i32 32, %22
  %24 = load %struct.stv*, %struct.stv** %8, align 8
  %25 = getelementptr inbounds %struct.stv, %struct.stv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.stv0910_cfg*, %struct.stv0910_cfg** %6, align 8
  %27 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 2
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 2, i32 0
  %32 = load %struct.stv*, %struct.stv** %8, align 8
  %33 = getelementptr inbounds %struct.stv, %struct.stv* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.stv0910_cfg*, %struct.stv0910_cfg** %6, align 8
  %35 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 7
  %38 = shl i32 %37, 4
  %39 = or i32 10, %38
  %40 = load %struct.stv*, %struct.stv** %8, align 8
  %41 = getelementptr inbounds %struct.stv, %struct.stv* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.stv0910_cfg*, %struct.stv0910_cfg** %6, align 8
  %43 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %16
  %47 = load %struct.stv0910_cfg*, %struct.stv0910_cfg** %6, align 8
  %48 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  br label %51

50:                                               ; preds = %16
  br label %51

51:                                               ; preds = %50, %46
  %52 = phi i32 [ %49, %46 ], [ 40, %50 ]
  %53 = load %struct.stv*, %struct.stv** %8, align 8
  %54 = getelementptr inbounds %struct.stv, %struct.stv* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.stv*, %struct.stv** %8, align 8
  %57 = getelementptr inbounds %struct.stv, %struct.stv* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.stv*, %struct.stv** %8, align 8
  %59 = getelementptr inbounds %struct.stv, %struct.stv* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 0, i32 512
  %64 = load %struct.stv*, %struct.stv** %8, align 8
  %65 = getelementptr inbounds %struct.stv, %struct.stv* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  %66 = load %struct.stv*, %struct.stv** %8, align 8
  %67 = getelementptr inbounds %struct.stv, %struct.stv* %66, i32 0, i32 6
  store i32 16000000, i32* %67, align 8
  %68 = load %struct.stv*, %struct.stv** %8, align 8
  %69 = getelementptr inbounds %struct.stv, %struct.stv* %68, i32 0, i32 7
  store i32 16, i32* %69, align 4
  %70 = load i32, i32* @RCVMODE_NONE, align 4
  %71 = load %struct.stv*, %struct.stv** %8, align 8
  %72 = getelementptr inbounds %struct.stv, %struct.stv* %71, i32 0, i32 19
  store i32 %70, i32* %72, align 8
  %73 = load %struct.stv*, %struct.stv** %8, align 8
  %74 = getelementptr inbounds %struct.stv, %struct.stv* %73, i32 0, i32 8
  store i32 -1, i32* %74, align 8
  %75 = load %struct.stv0910_cfg*, %struct.stv0910_cfg** %6, align 8
  %76 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 1, i32 0
  %81 = load %struct.stv*, %struct.stv** %8, align 8
  %82 = getelementptr inbounds %struct.stv, %struct.stv* %81, i32 0, i32 9
  store i32 %80, i32* %82, align 4
  %83 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %84 = load %struct.stv0910_cfg*, %struct.stv0910_cfg** %6, align 8
  %85 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.stv_base* @match_base(%struct.i2c_adapter* %83, i32 %86)
  store %struct.stv_base* %87, %struct.stv_base** %9, align 8
  %88 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %89 = icmp ne %struct.stv_base* %88, null
  br i1 %89, label %90, label %99

90:                                               ; preds = %51
  %91 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %92 = getelementptr inbounds %struct.stv_base, %struct.stv_base* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %96 = bitcast %struct.stv_base* %95 to %struct.stv*
  %97 = load %struct.stv*, %struct.stv** %8, align 8
  %98 = getelementptr inbounds %struct.stv, %struct.stv* %97, i32 0, i32 14
  store %struct.stv* %96, %struct.stv** %98, align 8
  br label %159

99:                                               ; preds = %51
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call %struct.stv_base* @kzalloc(i32 112, i32 %100)
  store %struct.stv_base* %101, %struct.stv_base** %9, align 8
  %102 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %103 = icmp ne %struct.stv_base* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %192

105:                                              ; preds = %99
  %106 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %107 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %108 = getelementptr inbounds %struct.stv_base, %struct.stv_base* %107, i32 0, i32 18
  store %struct.i2c_adapter* %106, %struct.i2c_adapter** %108, align 8
  %109 = load %struct.stv0910_cfg*, %struct.stv0910_cfg** %6, align 8
  %110 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %113 = getelementptr inbounds %struct.stv_base, %struct.stv_base* %112, i32 0, i32 17
  store i32 %111, i32* %113, align 8
  %114 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %115 = getelementptr inbounds %struct.stv_base, %struct.stv_base* %114, i32 0, i32 10
  store i32 1, i32* %115, align 8
  %116 = load %struct.stv0910_cfg*, %struct.stv0910_cfg** %6, align 8
  %117 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %105
  %121 = load %struct.stv0910_cfg*, %struct.stv0910_cfg** %6, align 8
  %122 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  br label %125

124:                                              ; preds = %105
  br label %125

125:                                              ; preds = %124, %120
  %126 = phi i32 [ %123, %120 ], [ 30000000, %124 ]
  %127 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %128 = getelementptr inbounds %struct.stv_base, %struct.stv_base* %127, i32 0, i32 11
  store i32 %126, i32* %128, align 4
  %129 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %130 = getelementptr inbounds %struct.stv_base, %struct.stv_base* %129, i32 0, i32 16
  %131 = call i32 @mutex_init(i32* %130)
  %132 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %133 = getelementptr inbounds %struct.stv_base, %struct.stv_base* %132, i32 0, i32 15
  %134 = call i32 @mutex_init(i32* %133)
  %135 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %136 = bitcast %struct.stv_base* %135 to %struct.stv*
  %137 = load %struct.stv*, %struct.stv** %8, align 8
  %138 = getelementptr inbounds %struct.stv, %struct.stv* %137, i32 0, i32 14
  store %struct.stv* %136, %struct.stv** %138, align 8
  %139 = load %struct.stv*, %struct.stv** %8, align 8
  %140 = bitcast %struct.stv* %139 to %struct.stv_base*
  %141 = call i64 @probe(%struct.stv_base* %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %125
  %144 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %145 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %144, i32 0, i32 0
  %146 = load %struct.stv0910_cfg*, %struct.stv0910_cfg** %6, align 8
  %147 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %150 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %149, i32 0, i32 0
  %151 = call i32 @dev_name(i32* %150)
  %152 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %148, i32 %151)
  %153 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %154 = call i32 @kfree(%struct.stv_base* %153)
  br label %192

155:                                              ; preds = %125
  %156 = load %struct.stv_base*, %struct.stv_base** %9, align 8
  %157 = getelementptr inbounds %struct.stv_base, %struct.stv_base* %156, i32 0, i32 13
  %158 = call i32 @list_add(i32* %157, i32* @stvlist)
  br label %159

159:                                              ; preds = %155, %90
  %160 = load %struct.stv*, %struct.stv** %8, align 8
  %161 = getelementptr inbounds %struct.stv, %struct.stv* %160, i32 0, i32 12
  %162 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %161, i32 0, i32 0
  %163 = bitcast %struct.TYPE_4__* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 4 bitcast (%struct.TYPE_4__* @stv0910_ops to i8*), i64 4, i1 false)
  %164 = load %struct.stv*, %struct.stv** %8, align 8
  %165 = bitcast %struct.stv* %164 to %struct.stv_base*
  %166 = load %struct.stv*, %struct.stv** %8, align 8
  %167 = getelementptr inbounds %struct.stv, %struct.stv* %166, i32 0, i32 12
  %168 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %167, i32 0, i32 1
  store %struct.stv_base* %165, %struct.stv_base** %168, align 8
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.stv*, %struct.stv** %8, align 8
  %171 = getelementptr inbounds %struct.stv, %struct.stv* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  %172 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %173 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %172, i32 0, i32 0
  %174 = load %struct.stv*, %struct.stv** %8, align 8
  %175 = getelementptr inbounds %struct.stv, %struct.stv* %174, i32 0, i32 12
  %176 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.stv0910_cfg*, %struct.stv0910_cfg** %6, align 8
  %181 = getelementptr inbounds %struct.stv0910_cfg, %struct.stv0910_cfg* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %184 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %183, i32 0, i32 0
  %185 = call i32 @dev_name(i32* %184)
  %186 = call i32 (i32*, i8*, i32, i32, ...) @dev_info(i32* %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %179, i32 %182, i32 %185)
  %187 = load %struct.stv*, %struct.stv** %8, align 8
  %188 = bitcast %struct.stv* %187 to %struct.stv_base*
  %189 = call i32 @stv0910_init_stats(%struct.stv_base* %188)
  %190 = load %struct.stv*, %struct.stv** %8, align 8
  %191 = getelementptr inbounds %struct.stv, %struct.stv* %190, i32 0, i32 12
  store %struct.dvb_frontend* %191, %struct.dvb_frontend** %4, align 8
  br label %196

192:                                              ; preds = %143, %104
  %193 = load %struct.stv*, %struct.stv** %8, align 8
  %194 = bitcast %struct.stv* %193 to %struct.stv_base*
  %195 = call i32 @kfree(%struct.stv_base* %194)
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %4, align 8
  br label %196

196:                                              ; preds = %192, %159, %15
  %197 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  ret %struct.dvb_frontend* %197
}

declare dso_local %struct.stv_base* @kzalloc(i32, i32) #1

declare dso_local %struct.stv_base* @match_base(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @probe(%struct.stv_base*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, ...) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @kfree(%struct.stv_base*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @stv0910_init_stats(%struct.stv_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
