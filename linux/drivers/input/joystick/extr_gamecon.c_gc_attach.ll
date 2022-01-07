; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_gamecon.c_gc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64* }
%struct.gc = type { i64, %struct.TYPE_3__*, i32, %struct.pardevice*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.pardevice = type { i32 }
%struct.parport = type { i64 }
%struct.pardev_cb = type { i32 }

@GC_MAX_PORTS = common dso_local global i32 0, align 4
@gc_cfg = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Not using parport%d.\0A\00", align 1
@PARPORT_FLAG_EXCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"gamecon\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"parport busy already - lp.o loaded?\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Not enough memory\0A\00", align 1
@gc_timer = common dso_local global i32 0, align 4
@GC_MAX_DEVICES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"No valid devices specified\0A\00", align 1
@gc_base = common dso_local global %struct.gc** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport*)* @gc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_attach(%struct.parport* %0) #0 {
  %2 = alloca %struct.parport*, align 8
  %3 = alloca %struct.gc*, align 8
  %4 = alloca %struct.pardevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pardev_cb, align 4
  store %struct.parport* %0, %struct.parport** %2, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %49, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GC_MAX_PORTS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %52

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gc_cfg, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %15
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gc_cfg, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23, %15
  br label %49

34:                                               ; preds = %23
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gc_cfg, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.parport*, %struct.parport** %2, align 8
  %44 = getelementptr inbounds %struct.parport, %struct.parport* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %52

48:                                               ; preds = %34
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %11

52:                                               ; preds = %47, %11
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @GC_MAX_PORTS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.parport*, %struct.parport** %2, align 8
  %58 = getelementptr inbounds %struct.parport, %struct.parport* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %59)
  br label %189

61:                                               ; preds = %52
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gc_cfg, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = bitcast i64* %68 to i32*
  store i32* %69, i32** %8, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @gc_cfg, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = call i32 @memset(%struct.pardev_cb* %10, i32 0, i32 4)
  %78 = load i32, i32* @PARPORT_FLAG_EXCL, align 4
  %79 = getelementptr inbounds %struct.pardev_cb, %struct.pardev_cb* %10, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.parport*, %struct.parport** %2, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call %struct.pardevice* @parport_register_dev_model(%struct.parport* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.pardev_cb* %10, i32 %81)
  store %struct.pardevice* %82, %struct.pardevice** %4, align 8
  %83 = load %struct.pardevice*, %struct.pardevice** %4, align 8
  %84 = icmp ne %struct.pardevice* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %61
  %86 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %189

87:                                               ; preds = %61
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.gc* @kzalloc(i32 40, i32 %88)
  store %struct.gc* %89, %struct.gc** %3, align 8
  %90 = load %struct.gc*, %struct.gc** %3, align 8
  %91 = icmp ne %struct.gc* %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %186

94:                                               ; preds = %87
  %95 = load %struct.gc*, %struct.gc** %3, align 8
  %96 = getelementptr inbounds %struct.gc, %struct.gc* %95, i32 0, i32 4
  %97 = call i32 @mutex_init(i32* %96)
  %98 = load %struct.pardevice*, %struct.pardevice** %4, align 8
  %99 = load %struct.gc*, %struct.gc** %3, align 8
  %100 = getelementptr inbounds %struct.gc, %struct.gc* %99, i32 0, i32 3
  store %struct.pardevice* %98, %struct.pardevice** %100, align 8
  %101 = load %struct.parport*, %struct.parport** %2, align 8
  %102 = getelementptr inbounds %struct.parport, %struct.parport* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.gc*, %struct.gc** %3, align 8
  %105 = getelementptr inbounds %struct.gc, %struct.gc* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.gc*, %struct.gc** %3, align 8
  %107 = getelementptr inbounds %struct.gc, %struct.gc* %106, i32 0, i32 2
  %108 = load i32, i32* @gc_timer, align 4
  %109 = call i32 @timer_setup(i32* %107, i32 %108, i32 0)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %142, %94
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @GC_MAX_DEVICES, align 4
  %117 = icmp slt i32 %115, %116
  br label %118

118:                                              ; preds = %114, %110
  %119 = phi i1 [ false, %110 ], [ %117, %114 ]
  br i1 %119, label %120, label %145

120:                                              ; preds = %118
  %121 = load i32*, i32** %8, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br label %142

128:                                              ; preds = %120
  %129 = load %struct.gc*, %struct.gc** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i64 @gc_setup_pad(%struct.gc* %129, i32 %130, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %156

139:                                              ; preds = %128
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %139, %127
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %110

145:                                              ; preds = %118
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %183

150:                                              ; preds = %145
  %151 = load %struct.gc*, %struct.gc** %3, align 8
  %152 = load %struct.gc**, %struct.gc*** @gc_base, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.gc*, %struct.gc** %152, i64 %154
  store %struct.gc* %151, %struct.gc** %155, align 8
  br label %189

156:                                              ; preds = %138
  br label %157

157:                                              ; preds = %181, %156
  %158 = load i32, i32* %5, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %5, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %182

161:                                              ; preds = %157
  %162 = load %struct.gc*, %struct.gc** %3, align 8
  %163 = getelementptr inbounds %struct.gc, %struct.gc* %162, i32 0, i32 1
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %161
  %172 = load %struct.gc*, %struct.gc** %3, align 8
  %173 = getelementptr inbounds %struct.gc, %struct.gc* %172, i32 0, i32 1
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @input_unregister_device(i64 %179)
  br label %181

181:                                              ; preds = %171, %161
  br label %157

182:                                              ; preds = %157
  br label %183

183:                                              ; preds = %182, %148
  %184 = load %struct.gc*, %struct.gc** %3, align 8
  %185 = call i32 @kfree(%struct.gc* %184)
  br label %186

186:                                              ; preds = %183, %92
  %187 = load %struct.pardevice*, %struct.pardevice** %4, align 8
  %188 = call i32 @parport_unregister_device(%struct.pardevice* %187)
  br label %189

189:                                              ; preds = %186, %150, %85, %56
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @memset(%struct.pardev_cb*, i32, i32) #1

declare dso_local %struct.pardevice* @parport_register_dev_model(%struct.parport*, i8*, %struct.pardev_cb*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.gc* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i64 @gc_setup_pad(%struct.gc*, i32, i32) #1

declare dso_local i32 @input_unregister_device(i64) #1

declare dso_local i32 @kfree(%struct.gc*) #1

declare dso_local i32 @parport_unregister_device(%struct.pardevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
