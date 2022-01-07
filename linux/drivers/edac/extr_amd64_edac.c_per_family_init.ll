; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_per_family_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_amd64_edac.c_per_family_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.amd64_family_type = type { i8*, i32 }
%struct.amd64_pvt = type { i32, i32, i32, i32, i32*, i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@family_types = common dso_local global %struct.amd64_family_type* null, align 8
@K8_CPUS = common dso_local global i64 0, align 8
@F10_CPUS = common dso_local global i64 0, align 8
@F15_M30H_CPUS = common dso_local global i64 0, align 8
@F15_M60H_CPUS = common dso_local global i64 0, align 8
@F15_CPUS = common dso_local global i64 0, align 8
@F16_M30H_CPUS = common dso_local global i64 0, align 8
@F16_CPUS = common dso_local global i64 0, align 8
@F17_M10H_CPUS = common dso_local global i64 0, align 8
@F17_M30H_CPUS = common dso_local global i64 0, align 8
@F17_M70H_CPUS = common dso_local global i64 0, align 8
@F17_CPUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"F18h\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Unsupported family!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%s %sdetected (node %d).\0A\00", align 1
@K8_REV_F = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"revF or later \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"revE or earlier \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amd64_family_type* (%struct.amd64_pvt*)* @per_family_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amd64_family_type* @per_family_init(%struct.amd64_pvt* %0) #0 {
  %2 = alloca %struct.amd64_family_type*, align 8
  %3 = alloca %struct.amd64_pvt*, align 8
  %4 = alloca %struct.amd64_family_type*, align 8
  store %struct.amd64_pvt* %0, %struct.amd64_pvt** %3, align 8
  store %struct.amd64_family_type* null, %struct.amd64_family_type** %4, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %6 = ashr i32 %5, 4
  %7 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %8 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 2), align 4
  %10 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %11 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %13 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %14 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %16 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %17 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %19 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %190 [
    i32 15, label %21
    i32 16, label %31
    i32 21, label %41
    i32 22, label %82
    i32 23, label %107
    i32 24, label %170
  ]

21:                                               ; preds = %1
  %22 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %23 = load i64, i64* @K8_CPUS, align 8
  %24 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %22, i64 %23
  store %struct.amd64_family_type* %24, %struct.amd64_family_type** %4, align 8
  %25 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %26 = load i64, i64* @K8_CPUS, align 8
  %27 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %25, i64 %26
  %28 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %27, i32 0, i32 1
  %29 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %30 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %29, i32 0, i32 4
  store i32* %28, i32** %30, align 8
  br label %192

31:                                               ; preds = %1
  %32 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %33 = load i64, i64* @F10_CPUS, align 8
  %34 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %32, i64 %33
  store %struct.amd64_family_type* %34, %struct.amd64_family_type** %4, align 8
  %35 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %36 = load i64, i64* @F10_CPUS, align 8
  %37 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %35, i64 %36
  %38 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %37, i32 0, i32 1
  %39 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %40 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %39, i32 0, i32 4
  store i32* %38, i32** %40, align 8
  br label %192

41:                                               ; preds = %1
  %42 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %43 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 48
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %48 = load i64, i64* @F15_M30H_CPUS, align 8
  %49 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %47, i64 %48
  store %struct.amd64_family_type* %49, %struct.amd64_family_type** %4, align 8
  %50 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %51 = load i64, i64* @F15_M30H_CPUS, align 8
  %52 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %50, i64 %51
  %53 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %52, i32 0, i32 1
  %54 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %55 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %54, i32 0, i32 4
  store i32* %53, i32** %55, align 8
  br label %192

56:                                               ; preds = %41
  %57 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %58 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 96
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %63 = load i64, i64* @F15_M60H_CPUS, align 8
  %64 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %62, i64 %63
  store %struct.amd64_family_type* %64, %struct.amd64_family_type** %4, align 8
  %65 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %66 = load i64, i64* @F15_M60H_CPUS, align 8
  %67 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %65, i64 %66
  %68 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %67, i32 0, i32 1
  %69 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %70 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %69, i32 0, i32 4
  store i32* %68, i32** %70, align 8
  br label %192

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %74 = load i64, i64* @F15_CPUS, align 8
  %75 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %73, i64 %74
  store %struct.amd64_family_type* %75, %struct.amd64_family_type** %4, align 8
  %76 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %77 = load i64, i64* @F15_CPUS, align 8
  %78 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %76, i64 %77
  %79 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %78, i32 0, i32 1
  %80 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %81 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %80, i32 0, i32 4
  store i32* %79, i32** %81, align 8
  br label %192

82:                                               ; preds = %1
  %83 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %84 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 48
  br i1 %86, label %87, label %97

87:                                               ; preds = %82
  %88 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %89 = load i64, i64* @F16_M30H_CPUS, align 8
  %90 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %88, i64 %89
  store %struct.amd64_family_type* %90, %struct.amd64_family_type** %4, align 8
  %91 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %92 = load i64, i64* @F16_M30H_CPUS, align 8
  %93 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %91, i64 %92
  %94 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %93, i32 0, i32 1
  %95 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %96 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %95, i32 0, i32 4
  store i32* %94, i32** %96, align 8
  br label %192

97:                                               ; preds = %82
  %98 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %99 = load i64, i64* @F16_CPUS, align 8
  %100 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %98, i64 %99
  store %struct.amd64_family_type* %100, %struct.amd64_family_type** %4, align 8
  %101 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %102 = load i64, i64* @F16_CPUS, align 8
  %103 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %101, i64 %102
  %104 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %103, i32 0, i32 1
  %105 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %106 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %105, i32 0, i32 4
  store i32* %104, i32** %106, align 8
  br label %192

107:                                              ; preds = %1
  %108 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %109 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sge i32 %110, 16
  br i1 %111, label %112, label %127

112:                                              ; preds = %107
  %113 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %114 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sle i32 %115, 47
  br i1 %116, label %117, label %127

117:                                              ; preds = %112
  %118 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %119 = load i64, i64* @F17_M10H_CPUS, align 8
  %120 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %118, i64 %119
  store %struct.amd64_family_type* %120, %struct.amd64_family_type** %4, align 8
  %121 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %122 = load i64, i64* @F17_M10H_CPUS, align 8
  %123 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %121, i64 %122
  %124 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %123, i32 0, i32 1
  %125 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %126 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %125, i32 0, i32 4
  store i32* %124, i32** %126, align 8
  br label %192

127:                                              ; preds = %112, %107
  %128 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %129 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp sge i32 %130, 48
  br i1 %131, label %132, label %147

132:                                              ; preds = %127
  %133 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %134 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp sle i32 %135, 63
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %139 = load i64, i64* @F17_M30H_CPUS, align 8
  %140 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %138, i64 %139
  store %struct.amd64_family_type* %140, %struct.amd64_family_type** %4, align 8
  %141 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %142 = load i64, i64* @F17_M30H_CPUS, align 8
  %143 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %141, i64 %142
  %144 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %143, i32 0, i32 1
  %145 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %146 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %145, i32 0, i32 4
  store i32* %144, i32** %146, align 8
  br label %192

147:                                              ; preds = %132, %127
  %148 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %149 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp sge i32 %150, 112
  br i1 %151, label %152, label %167

152:                                              ; preds = %147
  %153 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %154 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sle i32 %155, 127
  br i1 %156, label %157, label %167

157:                                              ; preds = %152
  %158 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %159 = load i64, i64* @F17_M70H_CPUS, align 8
  %160 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %158, i64 %159
  store %struct.amd64_family_type* %160, %struct.amd64_family_type** %4, align 8
  %161 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %162 = load i64, i64* @F17_M70H_CPUS, align 8
  %163 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %161, i64 %162
  %164 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %163, i32 0, i32 1
  %165 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %166 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %165, i32 0, i32 4
  store i32* %164, i32** %166, align 8
  br label %192

167:                                              ; preds = %152, %147
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %1, %169
  %171 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %172 = load i64, i64* @F17_CPUS, align 8
  %173 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %171, i64 %172
  store %struct.amd64_family_type* %173, %struct.amd64_family_type** %4, align 8
  %174 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %175 = load i64, i64* @F17_CPUS, align 8
  %176 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %174, i64 %175
  %177 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %176, i32 0, i32 1
  %178 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %179 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %178, i32 0, i32 4
  store i32* %177, i32** %179, align 8
  %180 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %181 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 24
  br i1 %183, label %184, label %189

184:                                              ; preds = %170
  %185 = load %struct.amd64_family_type*, %struct.amd64_family_type** @family_types, align 8
  %186 = load i64, i64* @F17_CPUS, align 8
  %187 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %185, i64 %186
  %188 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %187, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %188, align 8
  br label %189

189:                                              ; preds = %184, %170
  br label %192

190:                                              ; preds = %1
  %191 = call i32 @amd64_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store %struct.amd64_family_type* null, %struct.amd64_family_type** %2, align 8
  br label %216

192:                                              ; preds = %189, %157, %137, %117, %97, %87, %72, %61, %46, %31, %21
  %193 = load %struct.amd64_family_type*, %struct.amd64_family_type** %4, align 8
  %194 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %197 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 15
  br i1 %199, label %200, label %208

200:                                              ; preds = %192
  %201 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %202 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @K8_REV_F, align 4
  %205 = icmp sge i32 %203, %204
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)
  br label %209

208:                                              ; preds = %192
  br label %209

209:                                              ; preds = %208, %200
  %210 = phi i8* [ %207, %200 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %208 ]
  %211 = load %struct.amd64_pvt*, %struct.amd64_pvt** %3, align 8
  %212 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @amd64_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %195, i8* %210, i32 %213)
  %215 = load %struct.amd64_family_type*, %struct.amd64_family_type** %4, align 8
  store %struct.amd64_family_type* %215, %struct.amd64_family_type** %2, align 8
  br label %216

216:                                              ; preds = %209, %190
  %217 = load %struct.amd64_family_type*, %struct.amd64_family_type** %2, align 8
  ret %struct.amd64_family_type* %217
}

declare dso_local i32 @amd64_err(i8*) #1

declare dso_local i32 @amd64_info(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
